.class public final Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ART_SERVICE_COMMANDS:Ljava/util/Set;

.field public static final RANDOM:Ljava/security/SecureRandom;

.field public static final SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

.field public static final SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

.field public static final UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

.field public static final UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;


# instance fields
.field public mBrief:Z

.field public mComponents:Z

.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPm:Landroid/content/pm/PackageManagerInternal;

.field public mQueryFlags:I

.field public final mResourceCache:Ljava/util/WeakHashMap;

.field public mTargetUser:I

.field public final shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v0, "--multi-package"

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "review-required"

    const-string/jumbo v2, "revoked-compat"

    const-string/jumbo v3, "revoke-when-requested"

    const-string/jumbo v4, "user-fixed"

    const-string/jumbo v5, "user-set"

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v11, "snapshot-profile"

    const-string/jumbo v12, "art"

    const-string/jumbo v4, "compile"

    const-string/jumbo v5, "reconcile-secondary-dex-files"

    const-string/jumbo v6, "force-dex-opt"

    const-string/jumbo v7, "bg-dexopt-job"

    const-string/jumbo v8, "cancel-bg-dexopt-job"

    const-string/jumbo v9, "delete-dexopt"

    const-string/jumbo v10, "dump-profiles"

    invoke-static/range {v4 .. v12}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->ART_SERVICE_COMMANDS:Ljava/util/Set;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    const-class p1, Landroid/permission/PermissionManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    return-void
.end method

.method public static enabledSettingToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_12

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_12
    const-string/jumbo p0, "disabled-until-used"

    return-object p0

    :cond_16
    const-string/jumbo p0, "disabled-user"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "disabled"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "enabled"

    return-object p0

    :cond_22
    const-string/jumbo p0, "default"

    return-object p0
.end method

.method public static getDataSizeDisplay(J)Ljava/lang/String;
    .registers 12

    long-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L  # 1024.0

    div-double v2, v0, v2

    const-wide/high16 v4, 0x4130000000000000L  # 1048576.0

    div-double v4, v0, v4

    const-wide/high16 v6, 0x41d0000000000000L  # 1.073741824E9

    div-double/2addr v0, v6

    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    cmpl-double v9, v0, v7

    if-lez v9, :cond_24

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_24
    cmpl-double v0, v4, v7

    if-lez v0, :cond_33

    invoke-virtual {v6, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Mb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_33
    cmpl-double v0, v2, v7

    if-lez v0, :cond_42

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, " Kb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    :cond_42
    const-string v0, ""

    :goto_44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, " ("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 7

    if-nez p3, :cond_4

    if-eqz p4, :cond_84

    :cond_4
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_14

    new-instance p3, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_14
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p3, :cond_24

    new-instance p3, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_24
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p3, :cond_34

    new-instance p3, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_34
    const/4 p3, 0x0

    :goto_35
    if-eqz p3, :cond_84

    if-nez p4, :cond_71

    const-string/jumbo p4, "priority="

    invoke-static {p1, p4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " preferredOrder="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " match=0x"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/content/pm/ResolveInfo;->match:I

    const-string v1, " specificIndex="

    invoke-static {v0, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v0, p2, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isDefault="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :cond_71
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    return-void

    :cond_84
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 4

    iget-boolean p2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sessionId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; appPackageName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; isStaged = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isReady = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isApplied = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isFailed = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; errorMsg = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .registers 8

    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_25

    :cond_3c
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    goto :goto_25

    :cond_44
    invoke-static {p0, v1, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    if-nez v2, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_59
    array-length v3, v1

    if-ge v2, v3, :cond_90

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    if-nez v3, :cond_8a

    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    if-eqz v3, :cond_70

    aget v3, v1, v2

    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    goto :goto_8d

    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sessionId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    :cond_8a
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_90
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_25

    :cond_94
    return-void
.end method

.method public static translateUserId(IILjava/lang/String;)I
    .registers 11

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v4, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x1

    const-string/jumbo v7, "pm command"

    move v3, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_1f

    return p1

    :cond_1f
    return p0
.end method


# virtual methods
.method public final displayPackageFilePath(ILjava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/32 v1, 0x40000000

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_3f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p2, "package:"

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    :goto_31
    if-ge v2, v0, :cond_3e

    aget-object v3, p1, v2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_3e
    return v1

    :cond_3f
    const/4 p0, 0x1

    return p0
.end method

.method public final doAbandonSession(IZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_29

    :try_start_16
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    if-eqz p2, :cond_25

    const-string/jumbo p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    goto :goto_25

    :catchall_22
    move-exception p0

    move-object v1, v2

    goto :goto_2a

    :cond_25
    :goto_25
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_29
    move-exception p0

    :goto_2a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final doAddFiles(ILjava/util/ArrayList;JZZ)I
    .registers 20

    move/from16 v1, p6

    const-string/jumbo v2, "base"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_18} :catch_b8
    .catchall {:try_start_7 .. :try_end_18} :catchall_b5

    :try_start_18
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1c} :catch_58
    .catchall {:try_start_18 .. :try_end_1c} :catchall_53

    const/4 v12, 0x0

    const-string v6, "-"

    if-nez p1, :cond_6e

    :try_start_21
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_6e

    :cond_2c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v12

    :cond_31
    :goto_31
    if-ge v2, p1, :cond_6a

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_66

    if-eqz v1, :cond_5c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: can\'t install with size from STDIN for Archival install"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4f} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_4f} :catch_58
    .catchall {:try_start_21 .. :try_end_4f} :catchall_53

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catchall_53
    move-exception v0

    move-object p0, v0

    move-object v3, v5

    goto/16 :goto_df

    :catch_58
    move-exception v0

    move-object p1, v0

    move-object v3, v5

    goto :goto_ba

    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    move-result v3
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_60} :catch_58
    .catchall {:try_start_5c .. :try_end_60} :catchall_53

    if-eqz v3, :cond_31

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :cond_66
    :try_start_66
    invoke-virtual {p0, v3, v5, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;Z)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_69} :catch_58
    .catchall {:try_start_66 .. :try_end_69} :catchall_53

    goto :goto_31

    :cond_6a
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v12

    :cond_6e
    :goto_6e
    :try_start_6e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_87

    const-string/jumbo v0, "apex"

    goto :goto_8a

    :cond_87
    const-string/jumbo v0, "apk"

    :goto_8a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_9b

    new-instance p1, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {p1, v12, v7, v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v8, p3

    goto :goto_a8

    :cond_9b
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object p1

    const-wide/16 v0, -0x1

    move-wide v8, v0

    :goto_a8
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_b1} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_b1} :catch_58
    .catchall {:try_start_6e .. :try_end_b1} :catchall_53

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v12

    :catchall_b5
    move-exception v0

    move-object p0, v0

    goto :goto_df

    :catch_b8
    move-exception v0

    move-object p1, v0

    :goto_ba
    :try_start_ba
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add file(s), reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Failure [failed to add file(s)]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_ba .. :try_end_db} :catchall_b5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :goto_df
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final doCommitSession(I)I
    .registers 9

    const-string v0, "Failure ["

    const-string/jumbo v1, "Warning [Could not validate the dex paths: "

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_a
    new-instance v4, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v4, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_c7

    :try_start_1b
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_32

    const-string/jumbo p1, "]"

    if-nez p0, :cond_4d

    :try_start_24
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result p0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_32

    if-nez p0, :cond_4d

    :try_start_2a
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_31} :catch_36
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_36
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_4d

    :catchall_32
    move-exception p0

    move-object v3, v4

    goto/16 :goto_c8

    :catch_36
    move-exception p0

    :try_start_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_c3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v1, "android.content.pm.extra.STATUS"

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "android.content.pm.extra.WARNINGS"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v1, :cond_a5

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_be

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_7f
    if-ge v3, p0, :cond_9f

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7f

    :cond_9f
    const-string p0, "Completed with warning(s)"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bf

    :cond_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_37 .. :try_end_be} :catchall_32

    :cond_be
    move v5, v1

    :goto_bf
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v5

    :cond_c3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catchall_c7
    move-exception p0

    :goto_c8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6

    const/4 v0, -0x1

    if-ne p3, v0, :cond_9

    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_9
    const/4 v0, 0x0

    const-string/jumbo v1, "doCreateSession"

    invoke-static {p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result p3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    const/4 v0, 0x0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_1dc

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "  description:"

    const-string v8, "  label:"

    const-string v9, "  package:"

    const-string v10, "+ "

    const-string v11, ""

    if-eqz p2, :cond_dc

    if-lez v5, :cond_27

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    if-eqz v6, :cond_c7

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v12, v6, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v12

    if-eqz p4, :cond_6b

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, ": "

    if-eqz v13, :cond_55

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v4, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v12, v15, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d9

    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_d9

    :cond_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_74

    move-object v13, v10

    goto :goto_75

    :cond_74
    move-object v13, v11

    :goto_75
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "group:"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-static {v4, v13, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    if-eqz p3, :cond_d9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_d9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d9

    :cond_c7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_d2

    if-nez p4, :cond_d2

    move-object v12, v10

    goto :goto_d3

    :cond_d2
    move-object v12, v11

    :goto_d3
    const-string/jumbo v13, "ungrouped:"

    invoke-static {v2, v12, v13, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_d9
    :goto_d9
    const-string v4, "  "

    goto :goto_dd

    :cond_dc
    move-object v4, v11

    :goto_dd
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_ee

    move v13, v14

    goto :goto_f2

    :cond_ee
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    :goto_f2
    const/4 v15, 0x1

    :goto_f3
    if-ge v14, v13, :cond_1ca

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_10a

    if-nez v6, :cond_10a

    move/from16 v16, v3

    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_10c

    move/from16 v17, v5

    goto :goto_13d

    :cond_10a
    move/from16 v16, v3

    :cond_10c
    iget v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v3, v3, 0xf

    move/from16 v17, v5

    move/from16 v5, p5

    if-lt v3, v5, :cond_13d

    move/from16 v5, p6

    if-le v3, v5, :cond_11b

    goto :goto_13d

    :cond_11b
    if-eqz p4, :cond_141

    if-eqz v15, :cond_121

    const/4 v15, 0x0

    goto :goto_126

    :cond_121
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_126
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_138

    iget v3, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13d

    :cond_138
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13d
    :goto_13d
    move-object/from16 v18, v6

    goto/16 :goto_1be

    :cond_141
    invoke-static {v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_149

    move-object v5, v10

    goto :goto_14a

    :cond_149
    move-object v5, v11

    :goto_14a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "permission:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    if-eqz p3, :cond_13d

    invoke-static {v4, v9}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1a6

    invoke-static {v4, v8}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    move-object/from16 v18, v6

    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a8

    :cond_1a6
    move-object/from16 v18, v6

    :goto_1a8
    const-string v3, "  protectionLevel:"

    invoke-static {v4, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1be
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_f3

    :cond_1ca
    move/from16 v16, v3

    move/from16 v17, v5

    if-eqz p4, :cond_1d3

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d3
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_1dc
    return-void
.end method

.method public final doRemoveSplits(ILjava/util/Collection;Z)I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_40
    .catchall {:try_start_5 .. :try_end_16} :catchall_3e

    :try_start_16
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    move v1, p1

    :goto_1e
    if-ge v1, p0, :cond_32

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    goto :goto_1e

    :catchall_2c
    move-exception p0

    move-object v1, v2

    goto :goto_5e

    :catch_2f
    move-exception p0

    move-object v1, v2

    goto :goto_41

    :cond_32
    if-eqz p3, :cond_3a

    const-string/jumbo p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3a} :catch_2f
    .catchall {:try_start_16 .. :try_end_3a} :catchall_2c

    :cond_3a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p1

    :catchall_3e
    move-exception p0

    goto :goto_5e

    :catch_40
    move-exception p0

    :goto_41
    :try_start_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error: failed to remove split; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_3e

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x1

    return p0

    :goto_5e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    const-string/jumbo v2, "sys.boot_completed"

    const/4 v9, 0x0

    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v10, 0x1

    if-nez v2, :cond_19

    const-string v0, "Error: device is still booting."

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_19
    iget v2, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    const/4 v3, -0x2

    if-eq v2, v3, :cond_37

    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_37

    const-string v0, "Failure [user "

    const-string v1, " doesn\'t exist]"

    invoke-static {v2, v8, v0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_37
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v3, :cond_3f

    move v3, v10

    goto :goto_40

    :cond_3f
    move v3, v9

    :goto_40
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v4, v2

    if-eqz v4, :cond_49

    move v6, v10

    goto :goto_4a

    :cond_49
    move v6, v9

    :goto_4a
    const/high16 v4, 0x8000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_52

    move v7, v10

    :goto_50
    move v2, v3

    goto :goto_54

    :cond_52
    move v7, v9

    goto :goto_50

    :goto_54
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "-"

    if-nez v4, :cond_6d

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    goto :goto_6d

    :cond_6b
    move v4, v9

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v4, v10

    :goto_6e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v10, :cond_76

    move v11, v10

    goto :goto_77

    :cond_76
    move v11, v9

    :goto_77
    const-wide/16 v12, -0x1

    if-eqz v4, :cond_89

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v14, v14, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v14, v14, v12

    if-nez v14, :cond_89

    const-string v0, "Error: must either specify a package size or an APK file"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_89
    if-eqz v6, :cond_93

    if-eqz v11, :cond_93

    const-string v0, "Error: can\'t specify SPLIT(s) for APEX"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_93
    if-eqz v7, :cond_9d

    if-eqz v11, :cond_9d

    const-string v0, "Error: can\'t have SPLIT(s) for Archival install"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_9d
    if-nez v2, :cond_b2

    if-eqz v4, :cond_a9

    if-eqz v11, :cond_a9

    const-string v0, "Error: can\'t specify SPLIT(s) along with STDIN"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_a9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b2
    :goto_b2
    move/from16 v20, v2

    move-object/from16 v21, v3

    const-wide/16 v16, 0x0

    goto/16 :goto_1c8

    :cond_ba
    const-string v4, "Error: Failed to parse APK file: "

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    move-wide/from16 v16, v12

    iget-wide v12, v11, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    cmp-long v11, v12, v16

    if-nez v11, :cond_b2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    goto :goto_b2

    :cond_d1
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v14, v9

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    :goto_de
    if-ge v14, v11, :cond_1bf

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v10, "r"

    invoke-virtual {v1, v15, v10}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_1a0

    :try_start_f1
    invoke-virtual {v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v9

    move/from16 v20, v2

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-static {v9, v2, v15, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_14c

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/content/pm/parsing/ApkLite;

    new-instance v22, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v32

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v34}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    move-object/from16 v2, v22

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v2
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_13d} :catch_14a
    .catchall {:try_start_f1 .. :try_end_13d} :catchall_148

    add-long/2addr v12, v2

    :try_start_13e
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_141

    :catch_141
    move/from16 v2, v20

    move-object/from16 v3, v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_de

    :catchall_148
    move-exception v0

    goto :goto_19c

    :catch_14a
    move-exception v0

    goto :goto_171

    :cond_14c
    :try_start_14c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_171} :catch_14a
    .catchall {:try_start_14c .. :try_end_171} :catchall_148

    :goto_171
    :try_start_171
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_19c
    .catchall {:try_start_171 .. :try_end_19c} :catchall_148

    :goto_19c
    :try_start_19c
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_19f

    :catch_19f
    throw v0

    :cond_1a0
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Can\'t open file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2, v15}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bf
    move/from16 v20, v2

    move-object/from16 v21, v3

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    :goto_1c8
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    if-eqz v20, :cond_1eb

    :try_start_1d4
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    move-object/from16 v3, v21

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(ILjava/util/ArrayList;JZZ)I

    move-result v3
    :try_end_1de
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_1e7

    if-eqz v3, :cond_232

    :goto_1e0
    const/4 v3, 0x0

    :try_start_1e1
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1e4

    :catch_1e4
    const/16 v18, 0x1

    goto :goto_239

    :catchall_1e7
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_25f

    :cond_1eb
    move v9, v6

    move-object/from16 v10, v21

    :try_start_1ee
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J
    :try_end_1f2
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_257

    :try_start_1f2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_1fb

    const/4 v11, 0x1

    goto :goto_1fc

    :cond_1fb
    const/4 v11, 0x0

    :goto_1fc
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v3, 0x0

    :goto_201
    if-ge v3, v12, :cond_232

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v13, v3, 0x1

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    if-eqz v11, :cond_218

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_228

    :cond_218
    if-eqz v9, :cond_21e

    const-string/jumbo v6, "apex"

    goto :goto_221

    :cond_21e
    const-string/jumbo v6, "apk"

    :goto_221
    const-string/jumbo v7, "base."

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_228
    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v3
    :try_end_22d
    .catchall {:try_start_1f2 .. :try_end_22d} :catchall_25d

    if-eqz v3, :cond_230

    goto :goto_1e0

    :cond_230
    move v3, v13

    goto :goto_201

    :cond_232
    :try_start_232
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    move-result v3
    :try_end_236
    .catchall {:try_start_232 .. :try_end_236} :catchall_257

    if-eqz v3, :cond_23a

    goto :goto_1e0

    :goto_239
    return v18

    :cond_23a
    :try_start_23a
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v3, :cond_24e

    iget-wide v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    cmp-long v0, v3, v16

    if-lez v0, :cond_24e

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result v0

    return v0

    :catchall_24b
    move-exception v0

    const/4 v10, 0x0

    goto :goto_25f

    :cond_24e
    const-string/jumbo v0, "Success"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_254
    .catchall {:try_start_23a .. :try_end_254} :catchall_24b

    const/16 v19, 0x0

    return v19

    :catchall_257
    move-exception v0

    :goto_258
    const/16 v18, 0x1

    move/from16 v10, v18

    goto :goto_25f

    :catchall_25d
    move-exception v0

    goto :goto_258

    :goto_25f
    if-eqz v10, :cond_265

    const/4 v3, 0x0

    :try_start_262
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_265} :catch_265

    :catch_265
    :cond_265
    throw v0
.end method

.method public final doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    const-string/jumbo v3, "]"

    if-nez v0, :cond_25

    const-string p0, "Failure [Unknown session "

    invoke-static {p1, p4, p0, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_25
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v4

    if-nez v4, :cond_33

    const-string p0, "Failure [Session "

    const-string p2, " is not a staged session]"

    invoke-static {p1, p4, p0, p2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v6, v4, p2

    :goto_39
    if-eqz v0, :cond_68

    cmp-long v8, v4, v6

    if-gez v8, :cond_68

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v8

    if-nez v8, :cond_68

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v8

    if-eqz v8, :cond_4c

    goto :goto_68

    :cond_4c
    sub-long v4, v6, v4

    const-wide/16 v8, 0x64

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    goto :goto_39

    :cond_68
    :goto_68
    if-nez v0, :cond_70

    const-string p0, "Failure [failed to retrieve SessionInfo]"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_70
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result p0

    if-nez p0, :cond_93

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result p0

    if-nez p0, :cond_93

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failure [timed out after "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_93
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result p0

    if-nez p0, :cond_bf

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_bf
    const-string/jumbo p0, "Success. Reboot device to apply staged session"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 17

    const-string v1, "Error: failed to write; "

    const-string/jumbo v0, "Success: streamed "

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_67
    .catchall {:try_start_6 .. :try_end_17} :catchall_64

    :try_start_17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->openInFile(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez p3, :cond_38

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_34
    .catchall {:try_start_17 .. :try_end_2b} :catchall_30

    long-to-int p0, p0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_30
    move-exception v0

    move-object p0, v0

    move-object v2, v3

    goto :goto_85

    :catch_34
    move-exception v0

    move-object p1, v0

    move-object v2, v3

    goto :goto_69

    :cond_38
    :try_start_38
    move-object v9, p3

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v4, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    if-eqz p6, :cond_5f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_5f} :catch_34
    .catchall {:try_start_38 .. :try_end_5f} :catchall_30

    :cond_5f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    return p0

    :catchall_64
    move-exception v0

    move-object p0, v0

    goto :goto_85

    :catch_67
    move-exception v0

    move-object p1, v0

    :goto_69
    :try_start_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_64

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x1

    return p0

    :goto_85
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final getApplicationCategoryHint()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string/jumbo v2, "app: "

    if-nez p0, :cond_1d

    const-string p0, " not found!"

    invoke-static {v0, v2, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    const-string v3, ", category: "

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v4
.end method

.method public final getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->openInFile(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_54

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p0, v0

    :try_start_13
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_3c

    :try_start_18
    new-array p0, p0, [B

    invoke-static {p2, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_3e

    :try_start_22
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_3c

    invoke-static {p1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object p0

    if-eqz p0, :cond_30

    return-object p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: Can\'t parse archived package from: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3c
    move-exception p0

    goto :goto_48

    :catchall_3e
    move-exception p0

    :try_start_3f
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_3c

    :goto_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error: Can\'t load archived package from: "

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: Can\'t open file: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    goto :goto_68

    :cond_2a
    const-wide/32 v3, 0x400000

    :try_start_2d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_40

    if-eqz v1, :cond_40

    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_68

    :catch_40
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v1
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4e} :catch_53

    if-eqz v1, :cond_53

    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_68

    :catch_53
    :cond_53
    :try_start_53
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_66

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result p0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_61} :catch_66

    if-eqz p0, :cond_66

    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_68

    :catch_66
    :cond_66
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    :goto_68
    if-eqz p0, :cond_71

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    goto :goto_72

    :cond_71
    const/4 p0, 0x0

    :goto_72
    if-nez p0, :cond_78

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    move v3, v2

    :goto_86
    if-ge v3, v0, :cond_aa

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, p2, :cond_95

    goto :goto_a7

    :cond_95
    if-eqz v1, :cond_99

    move v1, v2

    goto :goto_9e

    :cond_99
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9e
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a7
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_aa
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRemainingArgs()Ljava/util/ArrayList;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method public final getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-wide/32 v2, 0x20008200

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to get ApplicationInfo for package name("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageManagerShellCommand"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_38
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p2, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_f
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public final makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 20

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v4, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    const-wide/32 v8, 0xea60

    iput-wide v8, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    iput-object v5, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    iput v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    const/4 v8, 0x0

    move v11, v3

    move v10, v6

    move-object v9, v8

    :cond_25
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4e2

    move-object/from16 v13, p1

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d5

    const-string/jumbo v14, "com.android.shell"

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_524

    :goto_3d
    move v15, v4

    goto/16 :goto_272

    :sswitch_40
    const-string v15, "--skip-verification"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_49

    goto :goto_3d

    :cond_49
    const/16 v15, 0x29

    goto/16 :goto_272

    :sswitch_4d
    const-string v15, "--force-sdk"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_56

    goto :goto_3d

    :cond_56
    const/16 v15, 0x28

    goto/16 :goto_272

    :sswitch_5a
    const-string v15, "--staged"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_63

    goto :goto_3d

    :cond_63
    const/16 v15, 0x27

    goto/16 :goto_272

    :sswitch_67
    const-string v15, "--restrict-permissions"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_70

    goto :goto_3d

    :cond_70
    const/16 v15, 0x26

    goto/16 :goto_272

    :sswitch_74
    const-string v15, "--user"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7d

    goto :goto_3d

    :cond_7d
    const/16 v15, 0x25

    goto/16 :goto_272

    :sswitch_81
    const-string v15, "--full"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8a

    goto :goto_3d

    :cond_8a
    const/16 v15, 0x24

    goto/16 :goto_272

    :sswitch_8e
    const-string v15, "--apex"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_97

    goto :goto_3d

    :cond_97
    const/16 v15, 0x23

    goto/16 :goto_272

    :sswitch_9b
    const-string v15, "--dexopt-compiler-filter"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a4

    goto :goto_3d

    :cond_a4
    const/16 v15, 0x22

    goto/16 :goto_272

    :sswitch_a8
    const-string v15, "--preload"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b1

    goto :goto_3d

    :cond_b1
    const/16 v15, 0x21

    goto/16 :goto_272

    :sswitch_b5
    const-string v15, "--ephemeral"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bf

    goto/16 :goto_3d

    :cond_bf
    const/16 v15, 0x20

    goto/16 :goto_272

    :sswitch_c3
    const-string v15, "--disable-auto-install-dependencies"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_cd

    goto/16 :goto_3d

    :cond_cd
    const/16 v15, 0x1f

    goto/16 :goto_272

    :sswitch_d1
    const-string v15, "--package-source"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_db

    goto/16 :goto_3d

    :cond_db
    const/16 v15, 0x1e

    goto/16 :goto_272

    :sswitch_df
    const-string v15, "--ignore-dexopt-profile"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e9

    goto/16 :goto_3d

    :cond_e9
    const/16 v15, 0x1d

    goto/16 :goto_272

    :sswitch_ed
    const-string v15, "--originating-uri"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f7

    goto/16 :goto_3d

    :cond_f7
    const/16 v15, 0x1c

    goto/16 :goto_272

    :sswitch_fb
    const-string v15, "--force-queryable"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_105

    goto/16 :goto_3d

    :cond_105
    const/16 v15, 0x1b

    goto/16 :goto_272

    :sswitch_109
    const-string v15, "--bypass-low-target-sdk-block"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_113

    goto/16 :goto_3d

    :cond_113
    const/16 v15, 0x1a

    goto/16 :goto_272

    :sswitch_117
    const-string v15, "--pkg"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_121

    goto/16 :goto_3d

    :cond_121
    const/16 v15, 0x19

    goto/16 :goto_272

    :sswitch_125
    const-string v15, "--abi"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12f

    goto/16 :goto_3d

    :cond_12f
    const/16 v15, 0x18

    goto/16 :goto_272

    :sswitch_133
    const-string v15, "-t"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13d

    goto/16 :goto_3d

    :cond_13d
    const/16 v15, 0x17

    goto/16 :goto_272

    :sswitch_141
    const-string v15, "-r"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14b

    goto/16 :goto_3d

    :cond_14b
    const/16 v15, 0x16

    goto/16 :goto_272

    :sswitch_14f
    const-string v15, "-p"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_159

    goto/16 :goto_3d

    :cond_159
    const/16 v15, 0x15

    goto/16 :goto_272

    :sswitch_15d
    const-string v15, "-i"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_167

    goto/16 :goto_3d

    :cond_167
    const/16 v15, 0x14

    goto/16 :goto_272

    :sswitch_16b
    const-string v15, "-g"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_175

    goto/16 :goto_3d

    :cond_175
    const/16 v15, 0x13

    goto/16 :goto_272

    :sswitch_179
    const-string v15, "-f"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_183

    goto/16 :goto_3d

    :cond_183
    const/16 v15, 0x12

    goto/16 :goto_272

    :sswitch_187
    const-string v15, "-d"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_191

    goto/16 :goto_3d

    :cond_191
    const/16 v15, 0x11

    goto/16 :goto_272

    :sswitch_195
    const-string v15, "-S"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19f

    goto/16 :goto_3d

    :cond_19f
    const/16 v15, 0x10

    goto/16 :goto_272

    :sswitch_1a3
    const-string v15, "-R"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1ad

    goto/16 :goto_3d

    :cond_1ad
    const/16 v15, 0xf

    goto/16 :goto_272

    :sswitch_1b1
    const-string v15, "--staged-ready-timeout"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1bb

    goto/16 :goto_3d

    :cond_1bb
    const/16 v15, 0xe

    goto/16 :goto_272

    :sswitch_1bf
    const-string v15, "--multi-package"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c9

    goto/16 :goto_3d

    :cond_1c9
    const/16 v15, 0xd

    goto/16 :goto_272

    :sswitch_1cd
    const-string v15, "--rollback-impact-level"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d7

    goto/16 :goto_3d

    :cond_1d7
    const/16 v15, 0xc

    goto/16 :goto_272

    :sswitch_1db
    const-string v15, "--update-ownership"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e5

    goto/16 :goto_3d

    :cond_1e5
    const/16 v15, 0xb

    goto/16 :goto_272

    :sswitch_1e9
    const-string v15, "--enable-rollback"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f3

    goto/16 :goto_3d

    :cond_1f3
    const/16 v15, 0xa

    goto/16 :goto_272

    :sswitch_1f7
    const-string v15, "--referrer"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_201

    goto/16 :goto_3d

    :cond_201
    const/16 v15, 0x9

    goto/16 :goto_272

    :sswitch_205
    const-string v15, "--instant"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20f

    goto/16 :goto_3d

    :cond_20f
    const/16 v15, 0x8

    goto/16 :goto_272

    :sswitch_213
    const-string v15, "--instantapp"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21d

    goto/16 :goto_3d

    :cond_21d
    const/4 v15, 0x7

    goto :goto_272

    :sswitch_21f
    const-string v15, "--install-location"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_229

    goto/16 :goto_3d

    :cond_229
    const/4 v15, 0x6

    goto :goto_272

    :sswitch_22b
    const-string v15, "--dont-kill"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_235

    goto/16 :goto_3d

    :cond_235
    const/4 v15, 0x5

    goto :goto_272

    :sswitch_237
    const-string v15, "--force-non-staged"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_241

    goto/16 :goto_3d

    :cond_241
    const/4 v15, 0x4

    goto :goto_272

    :sswitch_243
    const-string v15, "--force-uuid"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24d

    goto/16 :goto_3d

    :cond_24d
    const/4 v15, 0x3

    goto :goto_272

    :sswitch_24f
    const-string v15, "--skip-enable"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_259

    goto/16 :goto_3d

    :cond_259
    move v15, v2

    goto :goto_272

    :sswitch_25b
    const-string v15, "--install-reason"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_265

    goto/16 :goto_3d

    :cond_265
    move v15, v6

    goto :goto_272

    :sswitch_267
    const-string v15, "--non-staged"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_271

    goto/16 :goto_3d

    :cond_271
    move v15, v3

    :goto_272
    packed-switch v15, :pswitch_data_5ce

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown option "

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_282  #0x29
    iget v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v14, 0x80000

    or-int/2addr v12, v14

    iput v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_289
    :pswitch_289  #0x16, 0x28
    const/16 v16, 0x10

    const/16 v17, 0x4

    goto/16 :goto_25

    :pswitch_28f  #0x27
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_289

    :pswitch_292  #0x26
    iget v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v14, -0x400001

    and-int/2addr v12, v14

    iput v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_289

    :pswitch_29b  #0x25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    goto :goto_289

    :pswitch_2a6  #0x24
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto :goto_289

    :pswitch_2aa  #0x23
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    goto :goto_289

    :pswitch_2ae  #0x22
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    new-instance v12, Lcom/android/server/art/model/DexoptParams$Builder;

    const-string/jumbo v14, "install"

    invoke-direct {v12, v14}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    iget-object v14, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    goto :goto_289

    :pswitch_2c6  #0x21
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    goto :goto_289

    :pswitch_2ca  #0x1f
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setAutoInstallDependenciesEnabled(Z)V

    goto :goto_289

    :pswitch_2ce  #0x1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    goto :goto_289

    :pswitch_2da  #0x1d
    iget v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v14, 0x10000000

    or-int/2addr v12, v14

    iput v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_289

    :pswitch_2e2  #0x1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    goto :goto_289

    :pswitch_2ed  #0x1b
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    goto :goto_289

    :pswitch_2f1  #0x1a
    iget v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v14, 0x1000000

    or-int/2addr v12, v14

    iput v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_289

    :pswitch_2f9  #0x19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v12, :cond_302

    goto :goto_289

    :cond_302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30b  #0x18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_348

    const-string v14, "-"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_322

    const/16 v16, 0x10

    const/16 v17, 0x4

    goto :goto_334

    :cond_322
    sget-object v14, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v15, v14

    move v0, v3

    const/16 v16, 0x10

    :goto_328
    if-ge v0, v15, :cond_33a

    const/16 v17, 0x4

    aget-object v1, v14, v0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_338

    :goto_334
    iput-object v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    goto/16 :goto_25

    :cond_338
    add-int/2addr v0, v6

    goto :goto_328

    :cond_33a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ABI "

    const-string v2, " not supported on this device"

    invoke-static {v1, v12, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_351  #0x17
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_35d  #0x15
    const/16 v16, 0x10

    const/16 v17, 0x4

    iput v2, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_36d

    goto/16 :goto_25

    :cond_36d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing inherit package name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_376  #0x14
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_384

    goto/16 :goto_25

    :cond_384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing installer package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_38d  #0x13
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_399  #0x12
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_3a5  #0x11
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_3b1  #0x10
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v14, 0x0

    cmp-long v12, v0, v14

    if-lez v12, :cond_3c8

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto/16 :goto_25

    :cond_3c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3d1  #0xf
    const/16 v16, 0x10

    const/16 v17, 0x4

    move v10, v3

    goto/16 :goto_25

    :pswitch_3d8  #0xe
    const/16 v16, 0x10

    const/16 v17, 0x4

    goto :goto_3f9

    :pswitch_3dd  #0xd
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    goto/16 :goto_25

    :pswitch_3e6  #0xc
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_405

    if-gt v0, v2, :cond_405

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setRollbackImpactLevel(I)V

    :goto_3f9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    goto/16 :goto_25

    :cond_405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " is not a valid rollback impact level."

    invoke-static {v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_411  #0xb
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v0, :cond_41b

    iput-object v14, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    :cond_41b
    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_424  #0xa
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-nez v0, :cond_42e

    iput-object v14, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    :cond_42e
    :try_start_42e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_436
    .catch Ljava/lang/NumberFormatException; {:try_start_42e .. :try_end_436} :catch_455

    if-ltz v0, :cond_43e

    if-gt v0, v2, :cond_43e

    :try_start_43a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    goto :goto_456

    :cond_43e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is not a valid rollback data policy."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_455
    .catch Ljava/lang/NumberFormatException; {:try_start_43a .. :try_end_455} :catch_456

    :catch_455
    move v0, v3

    :catch_456
    :goto_456
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setEnableRollback(ZI)V

    goto/16 :goto_25

    :pswitch_45b  #0x9
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    goto/16 :goto_25

    :pswitch_46b  #0x7, 0x8, 0x20
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    goto/16 :goto_25

    :pswitch_474  #0x6
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    goto/16 :goto_25

    :pswitch_484  #0x5
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_25

    :pswitch_490  #0x4
    const/16 v16, 0x10

    const/16 v17, 0x4

    move v11, v6

    goto/16 :goto_25

    :pswitch_497  #0x3
    const/16 v16, 0x10

    const/16 v17, 0x4

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput-object v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_25

    :pswitch_4b4  #0x2
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setApplicationEnabledSettingPersistent()V

    goto/16 :goto_25

    :pswitch_4bd  #0x1
    const/16 v16, 0x10

    const/16 v17, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    goto/16 :goto_25

    :pswitch_4cd  #0x0
    const/16 v16, 0x10

    const/16 v17, 0x4

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_25

    :cond_4d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported option "

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e2
    const/high16 v0, 0x20000

    if-nez v9, :cond_4f2

    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_4ed

    move v1, v6

    goto :goto_4ee

    :cond_4ed
    move v1, v3

    :goto_4ee
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :cond_4f2
    if-eqz v10, :cond_4f9

    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v1, v2

    iput v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :cond_4f9
    if-eqz v11, :cond_503

    iput-boolean v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    or-int/2addr v1, v6

    iput v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    goto :goto_50c

    :cond_503
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_50c

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    :cond_50c
    :goto_50c
    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_523

    const/high16 v0, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_523

    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    if-eq v0, v6, :cond_51b

    goto :goto_523

    :cond_51b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data policy \'wipe\' is not supported for apex."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_523
    :goto_523
    return-object v7

    :sswitch_data_524
    .sparse-switch
        -0x7e50763a -> :sswitch_267
        -0x7ca7efaa -> :sswitch_25b
        -0x79ac7c0f -> :sswitch_24f
        -0x7449dd03 -> :sswitch_243
        -0x6c42be18 -> :sswitch_237
        -0x69f9e586 -> :sswitch_22b
        -0x4e451eb9 -> :sswitch_21f
        -0x43c705c0 -> :sswitch_213
        -0x38b573bf -> :sswitch_205
        -0x2a211e41 -> :sswitch_1f7
        -0x26fa19b2 -> :sswitch_1e9
        -0x15d08af5 -> :sswitch_1db
        -0x128f691a -> :sswitch_1cd
        -0xa293dee -> :sswitch_1bf
        -0x9723f90 -> :sswitch_1b1
        0x5c5 -> :sswitch_1a3
        0x5c6 -> :sswitch_195
        0x5d7 -> :sswitch_187
        0x5d9 -> :sswitch_179
        0x5da -> :sswitch_16b
        0x5dc -> :sswitch_15d
        0x5e3 -> :sswitch_14f
        0x5e5 -> :sswitch_141
        0x5e7 -> :sswitch_133
        0x2900ec8 -> :sswitch_125
        0x290482c -> :sswitch_117
        0x2fb1b7c -> :sswitch_109
        0x4991420 -> :sswitch_fb
        0x8d57768 -> :sswitch_ed
        0x1b585fd3 -> :sswitch_df
        0x22691122 -> :sswitch_d1
        0x329bc934 -> :sswitch_c3
        0x3eb0e7fd -> :sswitch_b5
        0x3fa0d469 -> :sswitch_a8
        0x4cd6dd75 -> :sswitch_9b
        0x4f71fec2 -> :sswitch_8e
        0x4f74582f -> :sswitch_81
        0x4f7b216b -> :sswitch_74
        0x59147c93 -> :sswitch_67
        0x59daeac6 -> :sswitch_5a
        0x781e9cb8 -> :sswitch_4d
        0x79732a09 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_5ce
    .packed-switch 0x0
        :pswitch_4cd  #00000000
        :pswitch_4bd  #00000001
        :pswitch_4b4  #00000002
        :pswitch_497  #00000003
        :pswitch_490  #00000004
        :pswitch_484  #00000005
        :pswitch_474  #00000006
        :pswitch_46b  #00000007
        :pswitch_46b  #00000008
        :pswitch_45b  #00000009
        :pswitch_424  #0000000a
        :pswitch_411  #0000000b
        :pswitch_3e6  #0000000c
        :pswitch_3dd  #0000000d
        :pswitch_3d8  #0000000e
        :pswitch_3d1  #0000000f
        :pswitch_3b1  #00000010
        :pswitch_3a5  #00000011
        :pswitch_399  #00000012
        :pswitch_38d  #00000013
        :pswitch_376  #00000014
        :pswitch_35d  #00000015
        :pswitch_289  #00000016
        :pswitch_351  #00000017
        :pswitch_30b  #00000018
        :pswitch_2f9  #00000019
        :pswitch_2f1  #0000001a
        :pswitch_2ed  #0000001b
        :pswitch_2e2  #0000001c
        :pswitch_2da  #0000001d
        :pswitch_2ce  #0000001e
        :pswitch_2ca  #0000001f
        :pswitch_46b  #00000020
        :pswitch_2c6  #00000021
        :pswitch_2ae  #00000022
        :pswitch_2aa  #00000023
        :pswitch_2a6  #00000024
        :pswitch_29b  #00000025
        :pswitch_292  #00000026
        :pswitch_28f  #00000027
        :pswitch_289  #00000028
        :pswitch_282  #00000029
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 10

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    sparse-switch v2, :sswitch_data_7b2

    goto/16 :goto_4df

    :sswitch_1a
    const-string/jumbo v2, "get-package-storage-stats"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1e

    goto/16 :goto_4e0

    :catch_27
    move-exception p0

    goto/16 :goto_7ab

    :sswitch_2a
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xa

    goto/16 :goto_4e0

    :sswitch_37
    const-string/jumbo v2, "get-moduleinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4b

    goto/16 :goto_4e0

    :sswitch_44
    const-string/jumbo v2, "log-visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4c

    goto/16 :goto_4e0

    :sswitch_51
    const-string/jumbo v2, "bypass-allowed-apex-update-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4e

    goto/16 :goto_4e0

    :sswitch_5e
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x14

    goto/16 :goto_4e0

    :sswitch_6b
    const-string/jumbo v2, "set-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x30

    goto/16 :goto_4e0

    :sswitch_78
    const-string/jumbo v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x23

    goto/16 :goto_4e0

    :sswitch_85
    const-string/jumbo v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x21

    goto/16 :goto_4e0

    :sswitch_92
    const-string/jumbo v2, "mark-guest-for-deletion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3b

    goto/16 :goto_4e0

    :sswitch_9f
    const-string/jumbo v2, "get-signature-permission-allowlist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x36

    goto/16 :goto_4e0

    :sswitch_ac
    const-string/jumbo v2, "remove-safemode-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x5e

    goto/16 :goto_4e0

    :sswitch_b9
    const-string/jumbo v2, "get-app-metadata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x51

    goto/16 :goto_4e0

    :sswitch_c6
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x12

    goto/16 :goto_4e0

    :sswitch_d3
    const-string/jumbo v2, "get-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3e

    goto/16 :goto_4e0

    :sswitch_e0
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x42

    goto/16 :goto_4e0

    :sswitch_ed
    const-string/jumbo v2, "clear-permission-flags"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x31

    goto/16 :goto_4e0

    :sswitch_fa
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x38

    goto/16 :goto_4e0

    :sswitch_107
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/4 v2, 0x7

    goto/16 :goto_4e0

    :sswitch_113
    const-string/jumbo v2, "getAppCategoryHintUserMap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x5b

    goto/16 :goto_4e0

    :sswitch_120
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3d

    goto/16 :goto_4e0

    :sswitch_12d
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x49

    goto/16 :goto_4e0

    :sswitch_13a
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xe

    goto/16 :goto_4e0

    :sswitch_147
    const-string/jumbo v2, "install-archived"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1f

    goto/16 :goto_4e0

    :sswitch_154
    const-string/jumbo v2, "get-distracting-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2c

    goto/16 :goto_4e0

    :sswitch_161
    const-string/jumbo v2, "rollback-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4a

    goto/16 :goto_4e0

    :sswitch_16e
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2f

    goto/16 :goto_4e0

    :sswitch_17b
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x11

    goto/16 :goto_4e0

    :sswitch_188
    const-string/jumbo v2, "install-add-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x16

    goto/16 :goto_4e0

    :sswitch_195
    const-string/jumbo v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x47

    goto/16 :goto_4e0

    :sswitch_1a2
    const-string/jumbo v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x13

    goto/16 :goto_4e0

    :sswitch_1af
    const-string/jumbo v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2d

    goto/16 :goto_4e0

    :sswitch_1bc
    const-string/jumbo v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1c

    goto/16 :goto_4e0

    :sswitch_1c9
    const-string/jumbo v2, "install-streaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xb

    goto/16 :goto_4e0

    :sswitch_1d6
    const-string/jumbo v2, "supports-multiple-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3f

    goto/16 :goto_4e0

    :sswitch_1e3
    const-string/jumbo v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x40

    goto/16 :goto_4e0

    :sswitch_1f0
    const-string/jumbo v2, "dump-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    move v2, v7

    goto/16 :goto_4e0

    :sswitch_1fc
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x19

    goto/16 :goto_4e0

    :sswitch_209
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    move v2, v4

    goto/16 :goto_4e0

    :sswitch_215
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    move v2, v6

    goto/16 :goto_4e0

    :sswitch_221
    const-string/jumbo v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x25

    goto/16 :goto_4e0

    :sswitch_22e
    const-string/jumbo v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    move v2, v3

    goto/16 :goto_4e0

    :sswitch_23a
    const-string/jumbo v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    move v2, v5

    goto/16 :goto_4e0

    :sswitch_246
    const-string/jumbo v2, "gc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/4 v2, 0x5

    goto/16 :goto_4e0

    :sswitch_252
    const-string/jumbo v2, "request-unarchive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x56

    goto/16 :goto_4e0

    :sswitch_25f
    const-string/jumbo v2, "get-shared-uid-allowlist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x37

    goto/16 :goto_4e0

    :sswitch_26c
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1a

    goto/16 :goto_4e0

    :sswitch_279
    const-string/jumbo v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x24

    goto/16 :goto_4e0

    :sswitch_286
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x10

    goto/16 :goto_4e0

    :sswitch_293
    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xf

    goto/16 :goto_4e0

    :sswitch_2a0
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2a

    goto/16 :goto_4e0

    :sswitch_2ad
    const-string/jumbo v2, "rename-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3c

    goto/16 :goto_4e0

    :sswitch_2ba
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x32

    goto/16 :goto_4e0

    :sswitch_2c7
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x3a

    goto/16 :goto_4e0

    :sswitch_2d4
    const-string/jumbo v2, "get-stagedsessions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x48

    goto/16 :goto_4e0

    :sswitch_2e1
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x9

    goto/16 :goto_4e0

    :sswitch_2ee
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x8

    goto/16 :goto_4e0

    :sswitch_2fb
    const-string/jumbo v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x39

    goto/16 :goto_4e0

    :sswitch_308
    const-string/jumbo v2, "setAppCategoryHintDeveloper"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x5a

    goto/16 :goto_4e0

    :sswitch_315
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1b

    goto/16 :goto_4e0

    :sswitch_322
    const-string/jumbo v2, "bypass-staged-installer-check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4d

    goto/16 :goto_4e0

    :sswitch_32f
    const-string/jumbo v2, "install-incremental"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xc

    goto/16 :goto_4e0

    :sswitch_33c
    const-string/jumbo v2, "archive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x55

    goto/16 :goto_4e0

    :sswitch_349
    const-string/jumbo v2, "disable-verification-for-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x4f

    goto/16 :goto_4e0

    :sswitch_356
    const-string/jumbo v2, "unstop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x27

    goto/16 :goto_4e0

    :sswitch_363
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x26

    goto/16 :goto_4e0

    :sswitch_370
    const-string/jumbo v2, "get-domain-verification-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x57

    goto/16 :goto_4e0

    :sswitch_37d
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2e

    goto/16 :goto_4e0

    :sswitch_38a
    const-string/jumbo v2, "set-distracting-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x2b

    goto/16 :goto_4e0

    :sswitch_397
    const-string/jumbo v2, "suspend-quarantine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x29

    goto/16 :goto_4e0

    :sswitch_3a4
    const-string/jumbo v2, "add-safemode-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x5d

    goto/16 :goto_4e0

    :sswitch_3b1
    const-string/jumbo v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x22

    goto/16 :goto_4e0

    :sswitch_3be
    const-string/jumbo v2, "install-get-pre-verified-domains"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x18

    goto/16 :goto_4e0

    :sswitch_3cb
    const-string/jumbo v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x33

    goto/16 :goto_4e0

    :sswitch_3d8
    const-string/jumbo v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x35

    goto/16 :goto_4e0

    :sswitch_3e5
    const-string/jumbo v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x34

    goto/16 :goto_4e0

    :sswitch_3f2
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/4 v2, 0x6

    goto/16 :goto_4e0

    :sswitch_3fe
    const-string/jumbo v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x44

    goto/16 :goto_4e0

    :sswitch_40b
    const-string/jumbo v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x20

    goto/16 :goto_4e0

    :sswitch_418
    const-string/jumbo v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x45

    goto/16 :goto_4e0

    :sswitch_425
    const-string/jumbo v2, "wait-for-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x53

    goto/16 :goto_4e0

    :sswitch_432
    const-string/jumbo v2, "set-silent-updates-policy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x50

    goto/16 :goto_4e0

    :sswitch_43f
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x43

    goto/16 :goto_4e0

    :sswitch_44c
    const-string/jumbo v2, "setAppCategoryHintUser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x58

    goto/16 :goto_4e0

    :sswitch_459
    const-string/jumbo v2, "clear-package-preferred-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x52

    goto/16 :goto_4e0

    :sswitch_466
    const-string/jumbo v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x41

    goto/16 :goto_4e0

    :sswitch_473
    const-string/jumbo v2, "getApplicationCategoryHint"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x59

    goto :goto_4e0

    :sswitch_47f
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x28

    goto :goto_4e0

    :sswitch_48b
    const-string/jumbo v2, "install-set-pre-verified-domains"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x17

    goto :goto_4e0

    :sswitch_497
    const-string/jumbo v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x15

    goto :goto_4e0

    :sswitch_4a3
    const-string/jumbo v2, "get-archived-package-metadata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x1d

    goto :goto_4e0

    :sswitch_4af
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0xd

    goto :goto_4e0

    :sswitch_4bb
    const-string/jumbo v2, "wait-for-background-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x54

    goto :goto_4e0

    :sswitch_4c7
    const-string/jumbo v2, "getAppCategoryInfos"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x5c

    goto :goto_4e0

    :sswitch_4d3
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4df

    const/16 v2, 0x46

    goto :goto_4e0

    :cond_4df
    :goto_4df
    move v2, v1

    :goto_4e0
    packed-switch v2, :pswitch_data_930

    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommand;->ART_SERVICE_COMMANDS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArtServiceCommand()I

    move-result p0

    return p0

    :cond_4f0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runCommand(Lcom/android/server/pm/PackageManagerShellCommand;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4fe

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_4fe
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_51e

    const-string v2, "-l"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_511

    invoke-virtual {p0, v3, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result p0

    return p0

    :cond_511
    const-string v2, "-lf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_531

    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result p0

    return p0

    :cond_51e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_531

    const-string v4, "-p"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_531

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_531
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_536  #0x5e
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runModifySafeModeList(Z)I

    move-result p0

    return p0

    :pswitch_53b  #0x5d
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runModifySafeModeList(Z)I

    move-result p0

    return p0

    :pswitch_540  #0x5c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getAppCategoryInfos(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return v3

    :pswitch_557  #0x5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getAppCategoryHintUserMap()Ljava/util/Map;

    move-result-object p0

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return v3

    :pswitch_56b  #0x5a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->setAppCategoryHintDeveloper()I

    move-result p0

    return p0

    :pswitch_570  #0x59
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApplicationCategoryHint()I

    move-result p0

    return p0

    :pswitch_575  #0x58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->setAppCategoryHintUser()I

    move-result p0

    return p0

    :pswitch_57a  #0x57
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetDomainVerificationAgent()I

    move-result p0

    return p0

    :pswitch_57f  #0x56
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUnarchive()I

    move-result p0

    return p0

    :pswitch_584  #0x55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArchive()I

    move-result p0

    return p0

    :pswitch_589  #0x54
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runWaitForHandler(Z)I

    move-result p0

    return p0

    :pswitch_58e  #0x53
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runWaitForHandler(Z)I

    move-result p0

    return p0

    :pswitch_593  #0x52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5a3

    const-string p0, "Error: package name not specified"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_5a2} :catch_27

    return v4

    :cond_5a3
    :try_start_5a3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_5ac
    .catch Ljava/lang/Exception; {:try_start_5a3 .. :try_end_5ac} :catch_5ad

    return v3

    :catch_5ad
    move-exception p0

    :try_start_5ae
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_618

    :pswitch_5b6  #0x51
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppMetadata()I

    move-result p0

    return p0

    :pswitch_5bb  #0x50
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetSilentUpdatesPolicy()I

    move-result p0

    return p0

    :pswitch_5c0  #0x4f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDisableVerificationForUid()I

    move-result p0

    return p0

    :pswitch_5c5  #0x4e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassAllowedApexUpdateCheck()I

    move-result p0

    return p0

    :pswitch_5ca  #0x4d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    move-result p0

    return p0

    :pswitch_5cf  #0x4c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    move-result p0

    return p0

    :pswitch_5d4  #0x4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    move-result p0

    return p0

    :pswitch_5d9  #0x4a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    move-result p0

    return p0

    :pswitch_5de  #0x49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_5e7  #0x48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result p0

    return p0

    :pswitch_5ec  #0x47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result p0

    return p0

    :pswitch_5f1  #0x46
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result p0

    return p0

    :pswitch_5f6  #0x45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result p0

    return p0

    :pswitch_5fb  #0x44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1
    :try_end_5ff
    .catch Landroid/os/RemoteException; {:try_start_5ae .. :try_end_5ff} :catch_27

    :try_start_5ff
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_608

    goto :goto_618

    :cond_608
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_60f
    .catch Ljava/lang/Exception; {:try_start_5ff .. :try_end_60f} :catch_610

    return v3

    :catch_610
    move-exception p0

    :try_start_611
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_618
    return v4

    :pswitch_619  #0x43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result p0

    return p0

    :pswitch_61e  #0x42
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result p0

    return p0

    :pswitch_623  #0x41
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Maximum supported running users: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_646  #0x40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Maximum supported users: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_661  #0x3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Is multiuser supported: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_67b  #0x3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetUserRestriction()V

    return v3

    :pswitch_67f  #0x3d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result p0

    return p0

    :pswitch_684  #0x3c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRenameUser()I

    move-result p0

    return p0

    :pswitch_689  #0x3b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMarkGuestForDeletion()I

    move-result p0

    return p0

    :pswitch_68e  #0x3a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result p0

    return p0

    :pswitch_693  #0x39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result p0

    return p0

    :pswitch_698  #0x38
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result p0

    return p0

    :pswitch_69d  #0x37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetSharedUidAllowlist()V

    return v3

    :pswitch_6a1  #0x36
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetSignaturePermissionAllowlist()I

    move-result p0

    return p0

    :pswitch_6a6  #0x35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result p0

    return p0

    :pswitch_6ab  #0x34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result p0

    return p0

    :pswitch_6b0  #0x33
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result p0

    return p0

    :pswitch_6b5  #0x32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result p0

    return p0

    :pswitch_6ba  #0x31
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result p0

    return p0

    :pswitch_6bf  #0x30
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    move-result p0

    return p0

    :pswitch_6c4  #0x2f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()V

    return v3

    :pswitch_6c8  #0x2e
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p0

    return p0

    :pswitch_6cd  #0x2d
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result p0

    return p0

    :pswitch_6d2  #0x2c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetDistractingRestriction()I

    move-result p0

    return p0

    :pswitch_6d7  #0x2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetDistractingRestriction()I

    move-result p0

    return p0

    :pswitch_6dc  #0x2a
    invoke-virtual {p0, v3, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    move-result p0

    return p0

    :pswitch_6e1  #0x29
    invoke-virtual {p0, v4, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    move-result p0

    return p0

    :pswitch_6e6  #0x28
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    move-result p0

    return p0

    :pswitch_6eb  #0x27
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetStoppedState()I

    move-result p0

    return p0

    :pswitch_6f0  #0x26
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p0

    return p0

    :pswitch_6f5  #0x25
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result p0

    return p0

    :pswitch_6fa  #0x24
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    :pswitch_6ff  #0x23
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    :pswitch_704  #0x22
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    :pswitch_709  #0x21
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    :pswitch_70e  #0x20
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result p0

    return p0

    :pswitch_713  #0x1f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArchivedInstall()I

    move-result p0

    return p0

    :pswitch_718  #0x1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPackageStorageStats()I

    move-result p0

    return p0

    :pswitch_71d  #0x1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetArchivedPackageMetadata()I

    move-result p0

    return p0

    :pswitch_722  #0x1c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result p0

    return p0

    :pswitch_727  #0x1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result p0

    return p0

    :pswitch_72c  #0x1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result p0

    return p0

    :pswitch_731  #0x19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result p0

    return p0

    :pswitch_736  #0x18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallGetPreVerifiedDomains()V

    return v3

    :pswitch_73a  #0x17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallSetPreVerifiedDomains()V

    return v3

    :pswitch_73e  #0x16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    move-result p0

    return p0

    :pswitch_743  #0x15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()V

    return v3

    :pswitch_747  #0x14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result p0

    return p0

    :pswitch_74c  #0x13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result p0

    return p0

    :pswitch_751  #0x12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result p0

    return p0

    :pswitch_756  #0x11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result p0

    return p0

    :pswitch_75b  #0x10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()V

    return v3

    :pswitch_75f  #0xf
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result p0

    return p0

    :pswitch_764  #0xd, 0xe
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V

    return v3

    :pswitch_770  #0xc
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    move-result p0

    return p0

    :pswitch_775  #0xb
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    move-result p0

    return p0

    :pswitch_77a  #0xa
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result p0

    return p0

    :pswitch_77f  #0x9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()V

    return v3

    :pswitch_783  #0x8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()V

    return v3

    :pswitch_787  #0x7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()V

    return v3

    :pswitch_78b  #0x6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()V

    return v3

    :pswitch_78f  #0x5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGc()V

    return v3

    :pswitch_793  #0x4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result p0

    return p0

    :pswitch_798  #0x3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpPackage()I

    move-result p0

    return p0

    :pswitch_79d  #0x2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result p0

    return p0

    :pswitch_7a2  #0x1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result p0

    return p0

    :pswitch_7a7  #0x0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->onHelp()V
    :try_end_7aa
    .catch Landroid/os/RemoteException; {:try_start_611 .. :try_end_7aa} :catch_27

    return v3

    :goto_7ab
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v1

    :sswitch_data_7b2
    .sparse-switch
        -0x7d5639bf -> :sswitch_4d3
        -0x7c42b204 -> :sswitch_4c7
        -0x767d7f79 -> :sswitch_4bb
        -0x7540f3bd -> :sswitch_4af
        -0x738d6c56 -> :sswitch_4a3
        -0x737996c2 -> :sswitch_497
        -0x6f4b3f6f -> :sswitch_48b
        -0x6e635fc4 -> :sswitch_47f
        -0x6e1b5621 -> :sswitch_473
        -0x6e1196e6 -> :sswitch_466
        -0x6d9b40a0 -> :sswitch_459
        -0x69a42171 -> :sswitch_44c
        -0x67c8bc23 -> :sswitch_43f
        -0x5b75ef1e -> :sswitch_432
        -0x562cf612 -> :sswitch_425
        -0x504e493d -> :sswitch_418
        -0x4d6ada7d -> :sswitch_40b
        -0x4b90d264 -> :sswitch_3fe
        -0x495fa230 -> :sswitch_3f2
        -0x41b47fcb -> :sswitch_3e5
        -0x410d7369 -> :sswitch_3d8
        -0x3fd1a8ae -> :sswitch_3cb
        -0x3f5df1e3 -> :sswitch_3be
        -0x3d838470 -> :sswitch_3b1
        -0x3cf6ae91 -> :sswitch_3a4
        -0x3b95e3a1 -> :sswitch_397
        -0x38494450 -> :sswitch_38a
        -0x37b0f17a -> :sswitch_37d
        -0x35fe0b3b -> :sswitch_370
        -0x321a08a5 -> :sswitch_363
        -0x3214dde5 -> :sswitch_356
        -0x2d61f2a1 -> :sswitch_349
        -0x2c971f3e -> :sswitch_33c
        -0x2c20e158 -> :sswitch_32f
        -0x29ee859f -> :sswitch_322
        -0x2549d71e -> :sswitch_315
        -0x2136f07a -> :sswitch_308
        -0x202b5604 -> :sswitch_2fb
        -0x1b57243d -> :sswitch_2ee
        -0x1a490a61 -> :sswitch_2e1
        -0x18d650e6 -> :sswitch_2d4
        -0x143f388c -> :sswitch_2c7
        -0xd1dc6eb -> :sswitch_2ba
        -0xa635306 -> :sswitch_2ad
        -0x85b5c7d -> :sswitch_2a0
        -0x7e40657 -> :sswitch_293
        -0x7bd8e92 -> :sswitch_286
        -0x6dac5fb -> :sswitch_279
        -0x533744c -> :sswitch_26c
        -0x2084327 -> :sswitch_25f
        -0x11dedb5 -> :sswitch_252
        0xcdc -> :sswitch_246
        0x2f39f4 -> :sswitch_23a
        0x30cf41 -> :sswitch_22e
        0x30dd42 -> :sswitch_221
        0x32b09e -> :sswitch_215
        0x346425 -> :sswitch_209
        0x120f24a -> :sswitch_1fc
        0x19a1d6d -> :sswitch_1f0
        0x5296aa8 -> :sswitch_1e3
        0x53fd674 -> :sswitch_1d6
        0x5951ab0 -> :sswitch_1c9
        0x5a5b64d -> :sswitch_1bc
        0x5e0c11c -> :sswitch_1af
        0x664b17d -> :sswitch_1a2
        0x8569735 -> :sswitch_195
        0xe265438 -> :sswitch_188
        0x1127c8f6 -> :sswitch_17b
        0x156ea506 -> :sswitch_16e
        0x1678dbb8 -> :sswitch_161
        0x17e9f2a4 -> :sswitch_154
        0x1e9db3d4 -> :sswitch_147
        0x2f90ddc8 -> :sswitch_13a
        0x3142fb77 -> :sswitch_12d
        0x372512d5 -> :sswitch_120
        0x3aadf441 -> :sswitch_113
        0x3ec9c212 -> :sswitch_107
        0x4634ad3c -> :sswitch_fa
        0x533c0489 -> :sswitch_ed
        0x55326612 -> :sswitch_e0
        0x5b8f0661 -> :sswitch_d3
        0x5bb0b12d -> :sswitch_c6
        0x5e7d0a72 -> :sswitch_b9
        0x5ed7c812 -> :sswitch_ac
        0x5f206435 -> :sswitch_9f
        0x63017527 -> :sswitch_92
        0x639e22e8 -> :sswitch_85
        0x653560d1 -> :sswitch_78
        0x67a44b14 -> :sswitch_6b
        0x681c75b2 -> :sswitch_5e
        0x68bf5845 -> :sswitch_51
        0x6cc4393b -> :sswitch_44
        0x6ecbfff1 -> :sswitch_37
        0x74ae259b -> :sswitch_2a
        0x77a75e4f -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_930
    .packed-switch 0x0
        :pswitch_7a7  #00000000
        :pswitch_7a2  #00000001
        :pswitch_79d  #00000002
        :pswitch_798  #00000003
        :pswitch_793  #00000004
        :pswitch_78f  #00000005
        :pswitch_78b  #00000006
        :pswitch_787  #00000007
        :pswitch_783  #00000008
        :pswitch_77f  #00000009
        :pswitch_77a  #0000000a
        :pswitch_775  #0000000b
        :pswitch_770  #0000000c
        :pswitch_764  #0000000d
        :pswitch_764  #0000000e
        :pswitch_75f  #0000000f
        :pswitch_75b  #00000010
        :pswitch_756  #00000011
        :pswitch_751  #00000012
        :pswitch_74c  #00000013
        :pswitch_747  #00000014
        :pswitch_743  #00000015
        :pswitch_73e  #00000016
        :pswitch_73a  #00000017
        :pswitch_736  #00000018
        :pswitch_731  #00000019
        :pswitch_72c  #0000001a
        :pswitch_727  #0000001b
        :pswitch_722  #0000001c
        :pswitch_71d  #0000001d
        :pswitch_718  #0000001e
        :pswitch_713  #0000001f
        :pswitch_70e  #00000020
        :pswitch_709  #00000021
        :pswitch_704  #00000022
        :pswitch_6ff  #00000023
        :pswitch_6fa  #00000024
        :pswitch_6f5  #00000025
        :pswitch_6f0  #00000026
        :pswitch_6eb  #00000027
        :pswitch_6e6  #00000028
        :pswitch_6e1  #00000029
        :pswitch_6dc  #0000002a
        :pswitch_6d7  #0000002b
        :pswitch_6d2  #0000002c
        :pswitch_6cd  #0000002d
        :pswitch_6c8  #0000002e
        :pswitch_6c4  #0000002f
        :pswitch_6bf  #00000030
        :pswitch_6ba  #00000031
        :pswitch_6b5  #00000032
        :pswitch_6b0  #00000033
        :pswitch_6ab  #00000034
        :pswitch_6a6  #00000035
        :pswitch_6a1  #00000036
        :pswitch_69d  #00000037
        :pswitch_698  #00000038
        :pswitch_693  #00000039
        :pswitch_68e  #0000003a
        :pswitch_689  #0000003b
        :pswitch_684  #0000003c
        :pswitch_67f  #0000003d
        :pswitch_67b  #0000003e
        :pswitch_661  #0000003f
        :pswitch_646  #00000040
        :pswitch_623  #00000041
        :pswitch_61e  #00000042
        :pswitch_619  #00000043
        :pswitch_5fb  #00000044
        :pswitch_5f6  #00000045
        :pswitch_5f1  #00000046
        :pswitch_5ec  #00000047
        :pswitch_5e7  #00000048
        :pswitch_5de  #00000049
        :pswitch_5d9  #0000004a
        :pswitch_5d4  #0000004b
        :pswitch_5cf  #0000004c
        :pswitch_5ca  #0000004d
        :pswitch_5c5  #0000004e
        :pswitch_5c0  #0000004f
        :pswitch_5bb  #00000050
        :pswitch_5b6  #00000051
        :pswitch_593  #00000052
        :pswitch_58e  #00000053
        :pswitch_589  #00000054
        :pswitch_584  #00000055
        :pswitch_57f  #00000056
        :pswitch_57a  #00000057
        :pswitch_575  #00000058
        :pswitch_570  #00000059
        :pswitch_56b  #0000005a
        :pswitch_557  #0000005b
        :pswitch_540  #0000005c
        :pswitch_53b  #0000005d
        :pswitch_536  #0000005e
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  path [--user USER_ID] PACKAGE"

    const-string v3, "    Print the path to the .apk of the given PACKAGE."

    const-string v4, "  dump PACKAGE"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Print various system state associated with the given PACKAGE."

    const-string v3, "  dump-package PACKAGE"

    const-string v4, "    Print package manager state associated with the given PACKAGE."

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  has-feature FEATURE_NAME [version]"

    const-string v3, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    const-string v4, "    otherwise prints false and returns exit status 1"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  list features"

    const-string v3, "    Prints all features of the system."

    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    const-string v3, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    const-string v4, "    Options:"

    const-string v5, "      -f: dump the name of the .apk file containing the test package"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  list libraries [-v]"

    const-string v3, "    Prints all system libraries."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      -v: shows the location of the library in the device\'s filesystem"

    const-string v3, "  list packages [-f] [-d] [-e] [-s] [-q] [-3] [-i] [-l] [-u] [-U] "

    const-string v4, "      [--show-versioncode] [--apex-only] [--factory-only]"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      [--uid UID] [--user USER_ID] [FILTER]"

    const-string v3, "    Prints all packages; optionally only those whose name contains"

    const-string v4, "    the text in FILTER.  Options are:"

    const-string v5, "      -f: see their associated file"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      -a: all known packages (but excluding APEXes)"

    const-string v3, "      -d: filter to only show disabled packages"

    const-string v4, "      -e: filter to only show enabled packages"

    const-string v5, "      -s: filter to only show system packages"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      -3: filter to only show third party packages"

    const-string v3, "      -i: see the installer for the packages"

    const-string v4, "      -l: ignored (used for compatibility with older releases)"

    const-string v5, "      -U: also show the package UID"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      -u: also include uninstalled packages"

    const-string v3, "      --show-versioncode: also show the version code"

    const-string v4, "      --apex-only: only show APEX packages"

    const-string v5, "      --factory-only: only show system packages excluding updates"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    const-string v3, "      --user USER_ID: only list packages belonging to the given user"

    const-string v4, "      --match-libraries: include packages that declare static shared and SDK libraries"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  list permission-groups"

    const-string v3, "    Prints all known permission groups."

    const-string v4, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    const-string v3, "      -g: organize by group"

    const-string v4, "      -f: print all information"

    const-string v5, "      -s: short summary"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      -d: only list dangerous permissions"

    const-string v3, "      -u: list only the permissions users will see"

    const-string v4, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Prints all staged sessions."

    const-string v3, "      --only-ready: show only staged sessions that are ready"

    const-string v4, "      --only-sessionid: show only sessionId of each session"

    const-string v5, "      --only-parent: hide all children sessions"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  list users"

    const-string v3, "    Prints all users."

    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    const-string v4, "       [--user USER_ID] INTENT"

    const-string v5, "    Prints the activity that resolves to the given INTENT."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    const-string v5, "    Prints all activities that can handle the given INTENT."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    const-string v5, "    Prints all services that can handle the given INTENT."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    const-string v5, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  install [-rtfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    const-string v4, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    const-string v5, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    const-string v6, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "       [--preload] [--instant] [--full] [--dont-kill]"

    const-string v7, "       [--enable-rollback [0/1/2]]"

    const-string v8, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    const-string v9, "       [--apex] [--non-staged] [--force-non-staged]"

    invoke-static {v0, v3, v7, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "       [--staged-ready-timeout TIMEOUT] [--ignore-dexopt-profile]"

    const-string v8, "       [--dexopt-compiler-filter FILTER]"

    const-string v9, "       [PATH [SPLIT...]|-]"

    const-string v10, "    Install an application.  Must provide the apk data to install, either as"

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    const-string v8, "      -R: disallow replacement of existing application"

    const-string v9, "      -t: allow test packages"

    const-string v10, "      -i: specify package name of installer owning the app"

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "      -f: install application on internal flash"

    const-string v8, "      -d: allow version code downgrade (debuggable packages only)"

    const-string v9, "      -p: partial application install (new split on top of existing pkg)"

    const-string v10, "      -g: grant all runtime permissions"

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "      -S: size in bytes of package, required for stdin"

    const-string v8, "      --user: install under the given user."

    const-string v9, "      --dont-kill: installing a new feature split, don\'t kill running app"

    const-string v10, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    const-string v9, "      --referrer: set URI that instigated the install of the app"

    const-string v10, "      --pkg: specify expected package name of app being installed"

    const-string v11, "      --abi: override the default ABI of the platform"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    const-string v9, "      --full: cause the app to be installed as a non-ephemeral full app"

    const-string v10, "      --enable-rollback: enable rollbacks for the upgrade."

    const-string v11, "          0=restore (default), 1=wipe, 2=retain"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --rollback-impact-level: set device impact required for rollback."

    const-string v9, "          0=low (default), 1=high, 2=manual only"

    const-string v10, "      --install-location: force the install location:"

    const-string v11, "          0=auto, 1=internal only, 2=prefer external"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --install-reason: indicates why the app is being installed:"

    const-string v9, "          0=unknown, 1=admin policy, 2=device restore,"

    const-string v10, "          3=device setup, 4=user request"

    const-string v11, "      --update-ownership: request the update ownership enforcement"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --force-uuid: force install on to disk volume with given UUID"

    const-string v9, "      --apex: install an .apex file, not an .apk"

    const-string v10, "      --non-staged: explicitly set this installation to be non-staged."

    const-string v11, "          This flag is only useful for APEX installs that are implicitly"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "          assumed to be staged."

    const-string v9, "      --force-non-staged: force the installation to run under a non-staged"

    const-string v10, "          session, which may complete without requiring a reboot. This will"

    const-string v11, "          force a rebootless update even for APEXes that don\'t support it"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --staged-ready-timeout: By default, staged sessions wait 60000"

    const-string v9, "          milliseconds for pre-reboot verification to complete when"

    const-string v10, "          performing staged install. This flag is used to alter the waiting"

    const-string v11, "          time. You can skip the waiting time by specifying a TIMEOUT of \'0\'"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --ignore-dexopt-profile: if set, all profiles are ignored by dexopt"

    const-string v9, "          during the installation, including the profile in the DM file and"

    const-string v10, "          the profile embedded in the APK file. If an invalid profile is"

    const-string v11, "          provided during installation, no warning will be reported by `adb"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "          install`."

    const-string v9, "          This option does not affect later dexopt operations (e.g.,"

    const-string v10, "          background dexopt and manual `pm compile` invocations)."

    const-string v11, "      --dexopt-compiler-filter: the target compiler filter for dexopt during"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "          the installation. The filter actually used may be different."

    const-string v9, "          Valid values: one of the values documented in"

    const-string v10, "          https://source.android.com/docs/core/runtime/configure#compiler_filters"

    const-string v11, "          or \'skip\'"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --disable-auto-install-dependencies: if set, any missing shared"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "          library dependencies will not be auto-installed"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "  install-existing [--user USER_ID|all|current]"

    const-string v9, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    const-string v10, "    Installs an existing application for a new user.  Options are:"

    invoke-static {v0, v1, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --user: install for the given user."

    const-string v9, "      --instant: install as an instant app"

    const-string v10, "      --full: install as a full app"

    const-string v11, "      --wait: wait until the package is installed"

    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "      --restrict-permissions: don\'t whitelist restricted permissions"

    const-string v9, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-static {v0, v8, v1, v9, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    invoke-static {v0, v5, v6, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "       [--multi-package] [--staged] [--update-ownership]"

    const-string v4, "    Like \"install\", but starts an install session.  Use \"install-write\""

    const-string v5, "    to push data into the session, and \"install-commit\" to finish."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    const-string v4, "    Write an apk into the given install session.  If the path is \'-\', data"

    const-string v5, "    will be read from stdin.  Options are:"

    invoke-static {v0, v3, v4, v5, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  install-remove SESSION_ID SPLIT..."

    const-string v4, "    Mark SPLIT(s) as removed in the given install session."

    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    const-string v4, "    Add one or more session IDs to a multi-package session."

    const-string v5, "  install-set-pre-verified-domains SESSION_ID PRE_VERIFIED_DOMAIN... "

    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    Specify a comma separated list of pre-verified domains for a session."

    const-string v4, "  install-get-pre-verified-domains SESSION_ID"

    const-string v5, "    List all the pre-verified domains that are specified in a session."

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    The result list is comma separated."

    const-string v4, "  install-commit SESSION_ID"

    const-string v5, "    Commit the given active install session, installing the app."

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  install-abandon SESSION_ID"

    const-string v4, "    Delete the given active install session."

    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  set-install-location LOCATION"

    const-string v4, "    Changes the default install location.  NOTE this is only intended for debugging;"

    const-string v5, "    using this can cause applications to break and other undersireable behavior."

    const-string v6, "    LOCATION is one of:"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    0 [auto]: Let system decide the best location"

    const-string v4, "    1 [internal]: Install on internal device storage"

    const-string v5, "    2 [external]: Install on external media"

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  get-install-location"

    const-string v4, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    const-string v5, "  move-package PACKAGE [internal|UUID]"

    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  move-primary-storage [internal|UUID]"

    const-string v4, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    invoke-static {v0, v1, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "       PACKAGE [SPLIT...]"

    const-string v4, "    Remove the given package name from the system.  May remove an entire app"

    const-string v5, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    const-string v6, "    given app.  Options are:"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "      -k: keep the data and cache directories around after package removal."

    const-string v4, "      --user: remove the app from the given user."

    const-string v5, "      --versionCode: only uninstall if the app has the given version code."

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  clear [--user USER_ID] [--cache-only] PACKAGE"

    const-string v4, "    Deletes data associated with a package. Options are:"

    const-string v5, "    --user: specifies the user for which we need to clear data"

    const-string v6, "    --cache-only: a flag which tells if we only need to clear cache data"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    const-string v4, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    const-string v5, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    const-string v4, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    const-string v5, "    These commands change the enabled state of a given package or"

    const-string v6, "    component (written as \"package/class\")."

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    const-string v4, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  unstop [--user USER_ID] PACKAGE"

    const-string v4, "  suspend [--user USER_ID] PACKAGE [PACKAGE...]"

    const-string v5, "    Suspends the specified package(s) (as user)."

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  unsuspend [--user USER_ID] PACKAGE [PACKAGE...]"

    const-string v4, "    Unsuspends the specified package(s) (as user)."

    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  set-distracting-restriction [--user USER_ID] [--flag FLAG ...]"

    const-string v4, "      PACKAGE [PACKAGE...]"

    const-string v5, "    Sets the specified restriction flags to given package(s) (for user)."

    const-string v6, "    Flags are:"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "      hide-notifications: Hides notifications from this package"

    const-string v4, "      hide-from-suggestions: Hides this package from suggestions"

    const-string v5, "        (by the launcher, etc.)"

    const-string v7, "    Any existing flags are overwritten, which also means that if no flags are"

    invoke-static {v0, v3, v4, v5, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    specified then all existing flags will be cleared."

    const-string v4, "  get-distracting-restriction [--user USER_ID] PACKAGE [PACKAGE...]"

    const-string v5, "    Gets the specified restriction flags of given package(s) (of the user)."

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  grant [--user USER_ID] [--all-permissions] PACKAGE PERMISSION"

    const-string v4, "  revoke [--user USER_ID] [--all-permissions] PACKAGE PERMISSION"

    const-string v5, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    must be declared as used in the app\'s manifest, be runtime permissions"

    const-string v4, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    const-string v5, "    --user: Specifies the user for which the operation needs to be performed"

    invoke-static {v0, v3, v4, v6, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "    --all-permissions: If specified all the missing runtime permissions will"

    const-string v6, "       be granted to the PACKAGE or to all the packages if none is specified."

    const-string v7, "  set-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    invoke-static {v0, v5, v6, v1, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "  clear-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "    These commands either set or clear permission flags on apps.  The permissions"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    The flags must be one or more of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  reset-permissions"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    Revert all runtime permissions to their default state."

    const-string v4, "  set-permission-enforced PERMISSION [true|false]"

    invoke-static {v0, v3, v1, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    const-string v4, "    Prints all privileged permissions for a package."

    const-string v5, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "    Prints all privileged permissions that are denied for a package."

    const-string v4, "  get-oem-permissions TARGET-PACKAGE"

    const-string v5, "    Prints all OEM permissions for a package."

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  get-signature-permission-allowlist PARTITION"

    const-string v4, "    Prints the signature permission allowlist for a partition."

    const-string v5, "    PARTITION is one of system, vendor, product, system-ext and apex"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  get-shared-uid-allowlist"

    const-string v4, "    Prints the shared UID allowlist."

    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    const-string v4, "    Trim cache files to reach the given free space."

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Lists the current users."

    const-string v3, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--guest]"

    const-string v4, "       [--user-type USER_TYPE] [--ephemeral] [--for-testing] [--pre-create-only]   USER_NAME"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    const-string v3, "    of the user."

    const-string v4, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    const-string v5, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    const-string v3, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    const-string v4, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  remove-user [--set-ephemeral-if-in-use | --wait] USER_ID"

    const-string v3, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    const-string v4, "    associated with that user."

    const-string v5, "      --set-ephemeral-if-in-use: If the user is currently running and"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        therefore cannot be removed immediately, mark the user as ephemeral"

    const-string v3, "        so that it will be automatically removed when possible (after user"

    const-string v4, "        switch or reboot)"

    const-string v5, "      --wait: Wait until user is removed. Ignored if set-ephemeral-if-in-use"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  mark-guest-for-deletion USER_ID"

    const-string v3, "    Mark the guest user for deletion. After this, it is possible to create a"

    const-string v4, "    new guest user and switch to it. This allows resetting the guest user"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    without switching to another user."

    const-string v3, "  rename-user USER_ID [USER_NAME]"

    const-string v4, "    Rename USER_ID with USER_NAME (or null when [USER_NAME] is not set)"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    const-string v3, "  get-user-restriction [--user USER_ID] [--all] RESTRICTION_KEY"

    invoke-static {v0, v1, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Display the value of restriction for the given restriction key if the"

    const-string v3, "    given user is valid."

    const-string v4, "      --all: display all restrictions for the given user"

    const-string v5, "          This option is used without restriction key"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  get-max-users"

    const-string v3, "  get-max-running-users"

    invoke-static {v0, v1, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    const-string v3, "    Set the default home activity (aka launcher)."

    const-string v4, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    const-string v3, "    matters: the actual component used will be determined automatically from"

    const-string v4, "    the package."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  set-installer PACKAGE INSTALLER"

    const-string v3, "    Set installer package name"

    const-string v4, "  get-instantapp-resolver"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Return the name of the component that is the current instant app installer."

    const-string v3, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    const-string v4, "    Mark the app as harmful with the given warning message."

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Removes updates to the given system application and falls back to its"

    const-string v3, "    /system version. Does nothing if the given package is not a system app."

    const-string v4, "    If no package is specified, removes updates to all system applications."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    const-string v3, "    Displays module info. If module-name is specified only that info is shown"

    const-string v4, "    By default, without any argument only installed modules are shown."

    const-string v5, "      --all: show all module info"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      --installed: show only installed modules"

    const-string v3, "  log-visibility [--enable|--disable] <PACKAGE>"

    const-string v4, "    Turns on debug logging when visibility is blocked for the given package."

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      --enable: turn on debug logging (default)"

    const-string v3, "      --disable: turn off debug logging"

    const-string v4, "  set-silent-updates-policy [--allow-unlimited-silent-updates <INSTALLER>]"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                            [--throttle-time <SECONDS>] [--reset]"

    const-string v3, "    Sets the policies of the silent updates."

    const-string v4, "      --allow-unlimited-silent-updates: allows unlimited silent updated"

    const-string v5, "        installation requests from the installer without the throttle time."

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "      --throttle-time: update the silent updates throttle time in seconds."

    const-string v3, "      --reset: restore the installer and throttle time to the default, and"

    const-string v4, "        clear tracks of silent updates in the system."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  clear-package-preferred-activities <PACKAGE>"

    const-string v3, "    Remove the preferred activity mappings for the given package."

    const-string v4, "  wait-for-handler --timeout <MILLIS>"

    const-string v5, "    Wait for a given amount of time till the package manager handler finishes"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    handling all pending messages."

    const-string v3, "      --timeout: wait for a given number of milliseconds. If the handler(s)"

    const-string v4, "        fail to finish before the timeout, the command returns error."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  wait-for-background-handler --timeout <MILLIS>"

    const-string v5, "    Wait for a given amount of time till the package manager\'s background"

    const-string v6, "    handler finishes handling all pending messages."

    invoke-static {v0, v2, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  archive [--user USER_ID] PACKAGE "

    const-string v3, "    During the archival process, the apps APKs and cache are removed from the"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    device while the user data is kept. Options are:"

    const-string v3, "      --user: archive the app from the given user."

    const-string v4, "  request-unarchive [--user USER_ID] PACKAGE "

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Requests to unarchive a currently archived package by sending a request"

    const-string v3, "    to unarchive an app to the responsible installer. Options are:"

    const-string v4, "      --user: request unarchival of the app from the given user."

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  get-domain-verification-agent [--user USER_ID]"

    const-string v3, "    Displays the component name of the domain verification agent on device."

    const-string v4, "    If the component isn\'t enabled, an error message will be displayed."

    const-string v5, "      --user: return the agent of the given user (SYSTEM_USER if unspecified)"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  get-package-storage-stats [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Return the storage stats for the given app, if present"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :try_start_41d
    const-class v3, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {v3, v2}, Lcom/android/server/art/ArtManagerLocal;->printShellCommandHelp(Ljava/io/PrintWriter;)V
    :try_end_428
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_41d .. :try_end_428} :catch_429

    goto :goto_42e

    :catch_429
    const-string v3, "ART Service is not ready. Please try again later"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_42e
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "  get-app-links [--user <USER_ID>] [<PACKAGE>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Prints the domain verification state for the given package, or for all"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    packages if none is specified. State codes are defined as follows:"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "        - none: nothing has been recorded for this domain"

    const-string v2, "        - verified: the domain has been successfully verified"

    const-string v3, "        - approved: force approved, usually through shell"

    const-string v4, "        - denied: force denied, usually through shell"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "        - migrated: preserved verification from a legacy response"

    const-string v2, "        - restored: preserved verification from a user data restore"

    const-string v3, "        - legacy_failure: rejected by a legacy verifier, unknown reason"

    const-string v4, "        - system_configured: automatically approved by the device config"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "        - pre_verified: the domain was pre-verified by the installer"

    const-string v2, "        - >= 1024: Custom error code which is specific to the device verifier"

    const-string v3, "      --user <USER_ID>: include user selections (includes all domains, not"

    const-string v4, "        just autoVerify ones)"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "  reset-app-links [--user <USER_ID>] [<PACKAGE>]"

    const-string v2, "    Resets domain verification state for the given package, or for all"

    const-string v3, "    packages if none is specified."

    const-string v4, "      --user <USER_ID>: clear user selection state instead; note this means"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "        domain verification state will NOT be cleared"

    const-string v2, "      <PACKAGE>: the package to reset, or \"all\" to reset all packages"

    const-string v3, "  verify-app-links [--re-verify] [<PACKAGE>]"

    const-string v4, "    Broadcasts a verification request for the given package, or for all"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "    packages if none is specified. Only sends if the package has previously"

    const-string v2, "    not recorded a response."

    const-string v3, "      --re-verify: send even if the package has recorded a response"

    const-string v4, "  set-app-links [--package <PACKAGE>] <STATE> <DOMAINS>..."

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "    Manually set the state of a domain for a package. The domain must be"

    const-string v2, "    declared by the package as autoVerify for this to work. This command"

    const-string v3, "    will not report a failure for domains that could not be applied."

    const-string v4, "      --package <PACKAGE>: the package to set, or \"all\" to set all packages"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "      <STATE>: the code to set the domains to, valid values are:"

    const-string v2, "        STATE_NO_RESPONSE (0): reset as if no response was ever recorded."

    const-string v3, "        STATE_SUCCESS (1): treat domain as successfully verified by domain."

    const-string v5, "          verification agent. Note that the domain verification agent can"

    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "          override this."

    const-string v2, "        STATE_APPROVED (2): treat domain as always approved, preventing the"

    const-string v3, "           domain verification agent from changing it."

    const-string v5, "        STATE_DENIED (3): treat domain as always denied, preveting the domain"

    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "          verification agent from changing it."

    const-string v2, "      <DOMAINS>: space separated list of domains to change, or \"all\" to"

    const-string v3, "        change every domain."

    const-string v5, "  set-app-links-user-selection --user <USER_ID> [--package <PACKAGE>]"

    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "      <ENABLED> <DOMAINS>..."

    const-string v5, "    Manually set the state of a host user selection for a package. The domain"

    const-string v6, "    must be declared by the package for this to work. This command will not"

    const-string v7, "    report a failure for domains that could not be applied."

    invoke-static {v0, p0, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "      --user <USER_ID>: the user to change selections for"

    const-string v5, "      --package <PACKAGE>: the package to set"

    const-string v6, "      <ENABLED>: whether or not to approve the domain"

    invoke-static {v0, p0, v5, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  set-app-links-allowed --user <USER_ID> [--package <PACKAGE>] <ALLOWED>"

    const-string v5, "    Toggle the auto verified link handling setting for a package."

    invoke-static {v0, v3, v2, v5, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "        packages will be reset if no one package is specified."

    const-string v2, "      <ALLOWED>: true to allow the package to open auto verified links, false"

    const-string v3, "        to disable"

    invoke-static {v0, v4, p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "  get-app-link-owners [--user <USER_ID>] [--package <PACKAGE>] [<DOMAINS>]"

    const-string v2, "    Print the owners for a specific domain for a given user in low to high"

    const-string v3, "    priority order."

    const-string v4, "      --user <USER_ID>: the user to query for"

    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "      --package <PACKAGE>: optionally also print for all web domains declared"

    const-string v2, "        by a package, or \"all\" to print all packages"

    const-string v3, "      --<DOMAINS>: space separated list of domains to query for"

    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final openInFile(JLjava/lang/String;)Landroid/util/Pair;
    .registers 12

    const-string v0, "-"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    goto :goto_57

    :cond_14
    if-eqz p3, :cond_4f

    const-string/jumbo p1, "r"

    invoke-virtual {p0, p3, p1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    const-wide/16 v4, -0x1

    if-nez p1, :cond_2a

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6

    cmp-long p2, v6, v1

    if-gez p2, :cond_4c

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p1, "Unable to get size of: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4c
    move-object p3, p1

    move-wide p1, v6

    goto :goto_57

    :cond_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    :goto_57
    cmp-long v0, p1, v1

    if-gtz v0, :cond_6f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: must specify an APK size"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final parseIntentAndUser()Landroid/content/Intent;
    .registers 9

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    return-object v0
.end method

.method public final processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;Z)V
    .registers 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "r"

    if-eqz p3, :cond_1c

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v2, v0

    goto :goto_32

    :cond_1c
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_76

    :try_start_2a
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_70

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-wide v4, v5

    :goto_32
    if-nez p3, :cond_64

    const-string p3, ".idsig"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_64

    :try_start_40
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    move-result-object p1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_51
    .catchall {:try_start_40 .. :try_end_48} :catchall_4e

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_4b
    move-object v7, p1

    move-object p0, v2

    goto :goto_66

    :catchall_4e
    move-exception v0

    move-object p1, v0

    goto :goto_60

    :catch_51
    move-exception v0

    move-object p1, v0

    :try_start_53
    const-string/jumbo p3, "PackageManagerShellCommand"

    const-string/jumbo v0, "V4 signature file exists but failed to be parsed."

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_4e

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_64

    :goto_60
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    :cond_64
    :goto_64
    const/4 p1, 0x0

    goto :goto_4b

    :goto_66
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return-void

    :catchall_70
    move-exception v0

    move-object p0, v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error: Can\'t open file: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .registers 19

    move-object/from16 v1, p1

    const-string/jumbo v0, "V4 signature is invalid in: "

    const-string/jumbo v2, "Unsupported streaming version: "

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_f
    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "Must specify file name and size"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_1e
    move-exception v0

    goto/16 :goto_d9

    :cond_21
    const/4 v5, 0x0

    aget-object v9, v3, v5

    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v10

    array-length v7, v3

    if-le v7, v6, :cond_38

    aget-object v7, v3, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_38

    aget-object v7, v3, v6

    goto :goto_39

    :cond_38
    move-object v7, v9

    :goto_39
    array-length v8, v3

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-le v8, v13, :cond_49

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v8

    aget-object v14, v3, v13

    invoke-virtual {v8, v14}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_4a

    :cond_49
    move-object v8, v12

    :goto_4a
    array-length v14, v3

    const/4 v15, 0x4

    if-le v14, v15, :cond_6c

    aget-object v3, v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_58

    if-le v3, v4, :cond_6d

    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_6b} :catch_1e

    return v4

    :cond_6c
    move v3, v5

    :cond_6d
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Empty file name in: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_81
    if-eqz v8, :cond_c8

    if-nez v3, :cond_8b

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v6, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_8b
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v13, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    :goto_90
    :try_start_90
    array-length v3, v8

    if-lez v3, :cond_a7

    invoke-static {v8}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v3

    if-nez v3, :cond_a7

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a4} :catch_a5

    return v4

    :catch_a5
    move-exception v0

    goto :goto_a9

    :cond_a7
    :goto_a7
    move-object v13, v8

    goto :goto_ce

    :goto_a9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "V4 signature is invalid: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_c8
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v5, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    :goto_ce
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    move-result-object v12

    move-object/from16 v7, p2

    invoke-virtual/range {v7 .. v13}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    return v5

    :goto_d9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to parse file parameters: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runArchive()I
    .registers 14

    const-string/jumbo v1, "]"

    const-string v2, "Failure ["

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v0, -0x1

    move v4, v0

    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_47

    const-string v4, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v0, :cond_b

    const/4 v5, -0x2

    if-eq v4, v5, :cond_b

    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-nez v5, :cond_b

    const-string p0, "Failure [user "

    const-string v0, " doesn\'t exist]"

    invoke-static {v4, v3, p0, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3d
    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_47
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_53

    const-string p0, "Error: package name not specified"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_53
    const/4 v5, 0x0

    if-ne v4, v0, :cond_59

    const/4 v0, 0x2

    move v10, v0

    goto :goto_5a

    :cond_59
    move v10, v5

    :goto_5a
    const-string/jumbo v0, "runArchive"

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    :try_start_66
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    const-string v9, ""

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/PackageArchiver;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7e} :catch_ac

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p0, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_92

    const-string/jumbo p0, "Success"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :catch_ac
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6
.end method

.method public final runArchivedInstall()I
    .registers 5

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v2, :cond_1a

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runArtServiceCommand()I
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_73
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_68

    :try_start_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_3c

    :try_start_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_33

    :try_start_18
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getTarget()Landroid/os/Binder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/art/ArtManagerLocal;->handleShellCommand(Landroid/os/Binder;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    move-result v0
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_45

    if-eqz v5, :cond_36

    :try_start_2f
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_36

    :catchall_33
    move-exception v0

    move-object v1, v0

    goto :goto_52

    :cond_36
    :goto_36
    if-eqz v4, :cond_3f

    :try_start_38
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_3f

    :catchall_3c
    move-exception v0

    move-object v1, v0

    goto :goto_5d

    :cond_3f
    :goto_3f
    if-eqz v3, :cond_44

    :try_start_41
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_73
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_41 .. :try_end_44} :catch_68

    :cond_44
    return v0

    :catchall_45
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_51

    :try_start_49
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw v1
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_33

    :goto_52
    if-eqz v4, :cond_5c

    :try_start_54
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v0

    :try_start_59
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw v1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_3c

    :goto_5d
    if-eqz v3, :cond_67

    :try_start_5f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception v0

    :try_start_64
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw v1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_68} :catch_73
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_64 .. :try_end_68} :catch_68

    :catch_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "ART Service is not ready. Please try again later"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :catch_73
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runBypassAllowedApexUpdateCheck()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    check-cast v1, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService;->bypassNextAllowedApexUpdateCheck(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    const/4 p0, 0x0

    return p0

    :catch_19
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runBypassStagedInstallerCheck()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    check-cast v1, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService;->bypassNextStagedInstallerCheck(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    const/4 p0, 0x0

    return p0

    :catch_19
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runClear()I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_33

    const-string v6, "--cache-only"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v2, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    :cond_31
    move v3, v5

    goto :goto_7

    :cond_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_43
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Error: package cmd restricted - package: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_5a
    const/16 v4, -0x2710

    const-string/jumbo v6, "runClear"

    invoke-static {v2, v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    if-nez v3, :cond_72

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    goto :goto_77

    :cond_72
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    :goto_77
    monitor-enter v4

    :catch_78
    :goto_78
    :try_start_78
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_80

    if-nez v0, :cond_82

    :try_start_7c
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_7f
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_7f} :catch_78
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_78

    :catchall_80
    move-exception p0

    goto :goto_9c

    :cond_82
    :try_start_82
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_80

    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_92
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Failed"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :goto_9c
    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_80

    throw p0
.end method

.method public final runCreateUser()I
    .registers 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, v0

    move v3, v1

    move v7, v3

    move-object v4, v2

    :cond_7
    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    if-eqz v5, :cond_b3

    const-string v6, "--profileOf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "runCreateUser"

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v8

    :goto_25
    move-object v5, v2

    goto :goto_86

    :cond_27
    const-string v6, "--managed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const-string/jumbo v5, "android.os.usertype.profile.MANAGED"

    goto :goto_86

    :cond_33
    const-string v6, "--restricted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string/jumbo v5, "android.os.usertype.full.RESTRICTED"

    goto :goto_86

    :cond_3f
    const-string v6, "--guest"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string/jumbo v5, "android.os.usertype.full.GUEST"

    goto :goto_86

    :cond_4b
    const-string v6, "--demo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string/jumbo v5, "android.os.usertype.full.DEMO"

    goto :goto_86

    :cond_57
    const-string v6, "--ephemeral"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    or-int/lit16 v7, v7, 0x100

    goto :goto_25

    :cond_62
    const-string v6, "--for-testing"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const v5, 0x8000

    or-int/2addr v7, v5

    goto :goto_25

    :cond_6f
    const-string v6, "--pre-create-only"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    move-object v5, v2

    move v3, v10

    goto :goto_86

    :cond_7a
    const-string v6, "--user-type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    :goto_86
    if-eqz v5, :cond_7

    if-eqz v4, :cond_a2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: more than one user type was specified ("

    const-string v1, " and "

    const-string v2, ")"

    invoke-static {v0, v4, v1, v5, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_a2
    move-object v4, v5

    goto/16 :goto_7

    :cond_a5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: unknown option "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_b3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c5

    if-nez v3, :cond_c5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user name specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :cond_c5
    if-eqz v5, :cond_d3

    if-eqz v3, :cond_d3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v6, "Warning: name is ignored for pre-created users"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d3
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    const-string/jumbo v6, "account"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v6

    if-nez v4, :cond_ef

    invoke-static {v7}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    move-result-object v4

    :cond_ef
    const-wide/32 v11, 0x40000

    const-string/jumbo v9, "shell_runCreateUser"

    invoke-static {v11, v12, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_f8
    invoke-static {v4}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11d

    if-ltz v8, :cond_102

    move v3, v8

    goto :goto_103

    :cond_102
    move v3, v1

    :goto_103
    invoke-interface {v0, v5, v3}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-nez v0, :cond_116

    const-string/jumbo v0, "root"

    goto :goto_119

    :catchall_111
    move-exception v0

    move-object p0, v0

    goto :goto_16e

    :catch_114
    move-exception v0

    goto :goto_137

    :cond_116
    const-string/jumbo v0, "com.android.shell"

    :goto_119
    invoke-interface {v6, v3, v8, v0}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    goto :goto_133

    :cond_11d
    if-gez v8, :cond_12c

    if-eqz v3, :cond_127

    invoke-interface {v0, v4}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    :goto_125
    move-object v2, v0

    goto :goto_133

    :cond_127
    invoke-interface {v0, v5, v4, v7}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_125

    :cond_12c
    const/4 v9, 0x0

    move-object v6, v4

    move-object v4, v0

    invoke-interface/range {v4 .. v9}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_133
    .catch Landroid/os/ServiceSpecificException; {:try_start_f8 .. :try_end_133} :catch_114
    .catchall {:try_start_f8 .. :try_end_133} :catchall_111

    :goto_133
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_150

    :goto_137
    :try_start_137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14f
    .catchall {:try_start_137 .. :try_end_14f} :catchall_111

    goto :goto_133

    :goto_150
    if-eqz v2, :cond_164

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Success: created user id "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v1

    :cond_164
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: couldn\'t create User."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v10

    :goto_16e
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final runDisableVerificationForUid()I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v3

    if-eq v3, v1, :cond_2a

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerService;->disableVerificationForUid(I)V

    const/4 p0, 0x0

    return p0

    :catch_28
    move-exception p0

    goto :goto_30

    :cond_2a
    const-string p0, "Error: must specify an instrumented uid"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2f} :catch_28

    return v1

    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failure ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runDump()I
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDumpPackage()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1f

    goto :goto_2f

    :catchall_1f
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Failure dumping service:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :goto_2f
    const/4 p0, 0x0

    return p0
.end method

.method public final runGc()V
    .registers 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Ok"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetAppMetadata()I
    .registers 9

    const-string/jumbo v0, "]"

    const-string v1, " - "

    const-string v2, "Failure ["

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.GET_APP_METADATA"

    const-string/jumbo v5, "getAppMetadataFd"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    :try_start_1b
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v6, v4, p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_27} :catch_7e

    if-eqz p0, :cond_7c

    :try_start_29
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_4c

    :goto_38
    :try_start_38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result p0

    if-eqz p0, :cond_48

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_46

    goto :goto_38

    :catchall_46
    move-exception p0

    goto :goto_4e

    :cond_48
    :try_start_48
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_7c

    :catch_4c
    move-exception p0

    goto :goto_57

    :goto_4e
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v4

    :try_start_53
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_4c

    :goto_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_7c
    :goto_7c
    const/4 p0, 0x1

    return p0

    :catch_7e
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runGetArchivedPackageMetadata()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    const-string p0, "Error: package name not specified"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_33
    const/16 v3, -0x2710

    const-string/jumbo v4, "runGetArchivedPackageMetadata"

    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    :try_start_3d
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v1

    if-nez v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package not found "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v3

    :catch_5b
    move-exception v1

    goto :goto_79

    :cond_5d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_61} :catch_5b

    const/4 v4, 0x0

    :try_start_62
    invoke-virtual {v2, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_74

    :try_start_69
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return v4

    :catchall_74
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_5b

    :goto_79
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get archived package, reason: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Failure [failed to get archived package], reason: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runGetDistractingRestriction()I
    .registers 12

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    const-string v3, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_7

    :cond_28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_38

    const-string p0, "Error: package name not specified"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_38
    const-string v5, "Distracting restrictions state for user "

    invoke-static {v1, v5, v3}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/16 v5, -0x2710

    const-string/jumbo v6, "get-distracting"

    invoke-static {v3, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v6

    const-string/jumbo v7, "packageNames cannot be null"

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, v4

    new-array v7, p0, [I

    const/4 v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_78

    goto :goto_91

    :cond_78
    move v9, v2

    :goto_79
    array-length v10, v4

    if-ge v9, v10, :cond_91

    aget-object v10, v4, v9

    invoke-interface {v6, v5, v3, v10}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_85

    goto :goto_8f

    :cond_85
    invoke-interface {v10, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v10

    aput v10, v7, v9

    :goto_8f
    add-int/2addr v9, v0

    goto :goto_79

    :cond_91
    :goto_91
    move v3, v2

    :goto_92
    if-ge v3, p0, :cond_cd

    aget v5, v7, v3

    if-ne v5, v8, :cond_a5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v3

    const-string v9, " not found ..."

    invoke-static {v1, v6, v9, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_cb

    :cond_a5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v3

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  state: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_c5

    if-eq v5, v0, :cond_c2

    const/4 v9, 0x2

    if-eq v5, v9, :cond_bf

    const-string/jumbo v5, "UNKNOWN"

    goto :goto_c8

    :cond_bf
    const-string v5, "HIDE_NOTIFICATIONS"

    goto :goto_c8

    :cond_c2
    const-string v5, "HIDE_FROM_SUGGESTIONS"

    goto :goto_c8

    :cond_c5
    const-string/jumbo v5, "NONE"

    :goto_c8
    invoke-static {v6, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_cb
    add-int/2addr v3, v0

    goto :goto_92

    :cond_cd
    return v2
.end method

.method public final runGetDomainVerificationAgent()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_6

    const-string p0, "Failure [user "

    const-string v1, " doesn\'t exist]"

    invoke-static {v2, v0, p0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_38
    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_42
    const/4 v1, 0x0

    const-string/jumbo v3, "runGetDomainVerificationAgent"

    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    :try_start_4a
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getDomainVerificationAgent(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_58

    const-string/jumbo p0, "No Domain Verifier available!"

    goto :goto_5c

    :catch_56
    move-exception p0

    goto :goto_60

    :cond_58
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :goto_5c
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5f} :catch_56

    return v1

    :goto_60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runGetHarmfulAppWarning()I
    .registers 4

    const/4 v0, -0x2

    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_27
    const/16 v1, -0x2710

    const-string/jumbo v2, "runGetHarmfulAppWarning"

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method public final runGetInstallLocation()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstallLocation()I

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v1, "auto"

    goto :goto_1d

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const-string/jumbo v1, "internal"

    goto :goto_1d

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    const-string/jumbo v1, "external"

    goto :goto_1d

    :cond_1a
    const-string/jumbo v1, "invalid"

    :goto_1d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetModuleInfo()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_29

    const-string v4, "--all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "--installed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_26
    const/high16 v1, 0x20000

    goto :goto_5

    :cond_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v4, " packageName: "

    if-eqz v2, :cond_59

    :try_start_31
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8d

    :catch_57
    move-exception p0

    goto :goto_8f

    :cond_59
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstalledModules(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_63
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ModuleInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_8c} :catch_57

    goto :goto_63

    :cond_8d
    :goto_8d
    const/4 p0, 0x1

    return p0

    :goto_8f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runGetOemPermissions()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_32

    :cond_28
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_3c

    :cond_32
    :goto_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "{}"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3c
    const/4 p0, 0x0

    return p0
.end method

.method public final runGetPackageStorageStats()I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    const-string p0, "Error: package name not specified"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_33
    :try_start_33
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/StorageStatsManager;

    const-string/jumbo v5, "runGetPackageStorageStats"

    const/16 v6, -0x2710

    invoke-static {v1, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v4, v5, v2, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cache: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apk: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lib: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dm: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dexopt artifacts: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current profile : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reference profile: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "external cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getExternalCacheBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_177} :catch_178

    return v4

    :catch_178
    move-exception v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get storage stats, reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Failure [failed to get storage stats], reason: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final runGetPrivappDenyPermissions()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runGetPrivappPermissions()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetSharedUidAllowlist()V
    .registers 6

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2b

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2b
    return-void
.end method

.method public final runGetSignaturePermissionAllowlist()I
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no partition specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_12
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_d0

    goto :goto_5c

    :sswitch_21
    const-string/jumbo v5, "system-ext"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_5c

    :cond_2b
    const/4 v4, 0x4

    goto :goto_5c

    :sswitch_2d
    const-string/jumbo v5, "apex"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_5c

    :cond_37
    const/4 v4, 0x3

    goto :goto_5c

    :sswitch_39
    const-string/jumbo v5, "product"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto :goto_5c

    :cond_43
    const/4 v4, 0x2

    goto :goto_5c

    :sswitch_45
    const-string/jumbo v5, "vendor"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_5c

    :cond_4f
    move v4, v2

    goto :goto_5c

    :sswitch_51
    const-string/jumbo v5, "system"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto :goto_5c

    :cond_5b
    move v4, v0

    :goto_5c
    packed-switch v4, :pswitch_data_e6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: unknown partition: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_6d  #0x4
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_7b

    :pswitch_70  #0x3
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_7b

    :pswitch_73  #0x2
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_7b

    :pswitch_76  #0x1
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    goto :goto_7b

    :pswitch_79  #0x0
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    :goto_7b
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v4, "  "

    invoke-direct {v3, p0, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    move v4, v0

    :goto_8b
    if-ge v4, p0, :cond_ce

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    const-string/jumbo v7, "Package: "

    invoke-virtual {v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v0

    :goto_aa
    if-ge v7, v5, :cond_c9

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c7

    const-string/jumbo v9, "Permission: "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_c7
    add-int/2addr v7, v2

    goto :goto_aa

    :cond_c9
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/2addr v4, v2

    goto :goto_8b

    :cond_ce
    return v0

    nop

    :sswitch_data_d0
    .sparse-switch
        -0x34e38dd1 -> :sswitch_51
        -0x30e15ab8 -> :sswitch_45
        -0x12723311 -> :sswitch_39
        0x2dc922 -> :sswitch_2d
        0x263fc183 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_79  #00000000
        :pswitch_76  #00000001
        :pswitch_73  #00000002
        :pswitch_70  #00000003
        :pswitch_6d  #00000004
    .end packed-switch
.end method

.method public final runGetUserRestriction()V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    const-string v4, "--all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v1, "--user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_6

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown option "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_6

    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument unexpected after \"--all\""

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    const/16 v3, -0x2710

    const-string/jumbo v4, "runGetUserRestriction"

    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    if-eqz v2, :cond_69

    invoke-interface {v3, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "All restrictions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7d

    invoke-interface {v3, v2, v1}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument unexpected after restriction key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "No restriction key specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runGrantRevokePermission(Z)I
    .registers 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    move v3, v0

    :cond_5
    :goto_5
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_26

    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :cond_1c
    const-string v6, "--all-permissions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v5

    goto :goto_5

    :cond_26
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_38

    if-nez v4, :cond_38

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no package specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_38
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_4a

    if-nez v6, :cond_4a

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: no permission specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_4a
    if-eqz v3, :cond_58

    if-eqz v6, :cond_58

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: permission specified but not expected"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_58
    const/16 v7, -0x2710

    const-string/jumbo v8, "runGrantRevokePermission"

    invoke-static {v0, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v8, 0x1000

    if-nez v4, :cond_78

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    goto :goto_80

    :cond_78
    :try_start_78
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_80} :catch_144

    :goto_80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_84
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error: package cmd restricted - package: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_84

    :cond_aa
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x0

    if-eqz v3, :cond_eb

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_bb

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_eb

    :cond_bb
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v13, v12

    move v14, v2

    :goto_ca
    if-ge v14, v13, :cond_eb

    aget-object v15, v12, v14

    :try_start_ce
    invoke-virtual {v11, v15, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v16
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ce .. :try_end_d2} :catch_d3

    goto :goto_d5

    :catch_d3
    move-object/from16 v16, v10

    :goto_d5
    if-nez v16, :cond_da

    move/from16 v17, v2

    goto :goto_e6

    :cond_da
    move/from16 v17, v2

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-eq v2, v5, :cond_e3

    goto :goto_e6

    :cond_e3
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e6
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v17

    goto :goto_ca

    :cond_eb
    :goto_eb
    move/from16 v17, v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    const-string v12, "Could not grant permission "

    const-string/jumbo v13, "PackageManagerShellCommand"

    if-eqz p1, :cond_121

    :try_start_105
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v11, v7}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10c} :catch_10d

    goto :goto_f1

    :catch_10d
    move-exception v0

    if-eqz v3, :cond_120

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f1

    :cond_120
    throw v0

    :cond_121
    :try_start_121
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14, v11, v7, v10}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_128} :catch_129

    goto :goto_f1

    :catch_129
    move-exception v0

    if-eqz v3, :cond_13c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f1

    :cond_13c
    throw v0

    :cond_13d
    move/from16 v2, v17

    goto/16 :goto_84

    :cond_141
    move/from16 v17, v2

    return v17

    :catch_144
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "Error: package not found"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Failure [package not found]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runHasFeature()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_11

    const-string p0, "Error: expected FEATURE name"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    const/4 v4, 0x0

    goto :goto_1d

    :cond_19
    :try_start_19
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1d
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v1, v4}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_2c} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2c} :catch_2f

    xor-int/lit8 p0, v1, 0x1

    return p0

    :catch_2f
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :catch_38
    const-string p0, "Error: illegal version number "

    invoke-static {v0, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final runIncrementalInstall()I
    .registers 4

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v2, :cond_13

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runInstall()I
    .registers 2

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runInstallAddSession()I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    goto :goto_11

    :cond_1f
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    const-string p0, "Error: At least two sessions are required."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_2c
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_35
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_73

    :try_start_46
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: parent session ID is not a multi-package session"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_59

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v4

    :catchall_59
    move-exception p0

    move-object v3, v5

    goto :goto_74

    :cond_5c
    const/4 p0, 0x0

    move v1, p0

    :goto_5e
    :try_start_5e
    array-length v3, v0

    if-ge v1, v3, :cond_69

    aget v3, v0, v1

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    const-string/jumbo v0, "Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_59

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_73
    move-exception p0

    :goto_74
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final runInstallCommit()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    const-string v1, "--staged-ready-timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    move-result v4

    if-eqz v4, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_5a

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_5a
    const-string/jumbo p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runInstallCreate()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v1, "Success: created install session ["

    const-string/jumbo v2, "]"

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runInstallExisting()I
    .registers 13

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v0, -0x2

    const/high16 v3, 0x400000

    const/4 v4, 0x0

    move v7, v3

    move v3, v4

    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_132

    goto :goto_5b

    :sswitch_1a
    const-string v8, "--restrict-permissions"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_5b

    :cond_23
    const/4 v6, 0x5

    goto :goto_5b

    :sswitch_25
    const-string v8, "--wait"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_5b

    :cond_2e
    const/4 v6, 0x4

    goto :goto_5b

    :sswitch_30
    const-string v8, "--user"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_5b

    :cond_39
    const/4 v6, 0x3

    goto :goto_5b

    :sswitch_3b
    const-string v8, "--full"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_5b

    :cond_44
    const/4 v6, 0x2

    goto :goto_5b

    :sswitch_46
    const-string v8, "--ephemeral"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    goto :goto_5b

    :cond_4f
    move v6, v1

    goto :goto_5b

    :sswitch_51
    const-string v8, "--instant"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    goto :goto_5b

    :cond_5a
    move v6, v4

    :goto_5b
    packed-switch v6, :pswitch_data_14c

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_68  #0x5
    const v5, -0x400001

    and-int/2addr v5, v7

    :goto_6c
    move v7, v5

    goto :goto_b

    :pswitch_6e  #0x4
    move v3, v1

    goto :goto_b

    :pswitch_70  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_b

    :pswitch_79  #0x2
    and-int/lit16 v5, v7, -0x801

    or-int/lit16 v5, v5, 0x4000

    goto :goto_6c

    :pswitch_7e  #0x0, 0x1
    or-int/lit16 v5, v7, 0x800

    and-int/lit16 v5, v5, -0x4001

    goto :goto_6c

    :cond_83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8f

    const-string p0, "Error: package name not specified"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_8f
    const/16 v5, -0x2710

    const-string/jumbo v8, "runInstallExisting"

    invoke-static {v0, v5, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v10

    const/4 v8, 0x0

    if-eqz v3, :cond_e5

    :try_start_9b
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installing package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    move-object v5, p0

    check-cast v5, Lcom/android/server/pm/PackageInstallerService;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/PackageInstallerService;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "Received intent for package install"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p0, :cond_e1

    return v4

    :cond_e1
    return v1

    :catch_e2
    move-exception v0

    move-object p0, v0

    goto :goto_12a

    :cond_e5
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    move v9, v8

    move v8, v7

    move v7, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p0
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_ef} :catch_e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_ef} :catch_e2

    const/4 v0, -0x3

    const-string/jumbo v3, "Package "

    if-eq p0, v0, :cond_110

    :try_start_f5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " installed for user: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_110
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_12a} :catch_e2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_12a} :catch_e2

    :goto_12a
    invoke-virtual {p0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :sswitch_data_132
    .sparse-switch
        -0x38b573bf -> :sswitch_51
        0x3eb0e7fd -> :sswitch_46
        0x4f74582f -> :sswitch_3b
        0x4f7b216b -> :sswitch_30
        0x4f7bc715 -> :sswitch_25
        0x59147c93 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_7e  #00000000
        :pswitch_7e  #00000001
        :pswitch_79  #00000002
        :pswitch_70  #00000003
        :pswitch_6e  #00000004
        :pswitch_68  #00000005
    .end packed-switch
.end method

.method public final runInstallGetPreVerifiedDomains()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    :try_start_d
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_3f

    :try_start_1e
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->getPreVerifiedDomains()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string/jumbo p0, "The session doesn\'t have any pre-verified domains specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b

    :catchall_2f
    move-exception p0

    move-object v2, v3

    goto :goto_40

    :cond_32
    const-string v1, ","

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_2f

    :goto_3b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_3f
    move-exception p0

    :goto_40
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final runInstallRemove()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    const-string p0, "Error: split name not specified"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_1d
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result p0

    return p0
.end method

.method public final runInstallSetPreVerifiedDomains()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_16
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_36

    :try_start_27
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageInstaller$Session;->setPreVerifiedDomains(Ljava/util/Set;)V
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_33
    move-exception p0

    move-object v2, v3

    goto :goto_37

    :catchall_36
    move-exception p0

    :goto_37
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public final runInstallWrite()I
    .registers 10

    const-wide/16 v0, -0x1

    move-wide v5, v0

    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "-S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown option: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final runList()I
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "-f"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    if-nez v8, :cond_1a

    const-string v0, "Error: didn\'t specify type of data to list"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_1a
    const-string v10, "="

    const/4 v11, 0x0

    const-string v12, "Error: Unknown option: "

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_394

    :goto_26
    move v13, v9

    goto/16 :goto_b3

    :sswitch_29
    const-string/jumbo v13, "initial-non-stopped-system-packages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    goto :goto_26

    :cond_33
    const/16 v13, 0xa

    goto/16 :goto_b3

    :sswitch_37
    const-string/jumbo v13, "permissions"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    goto :goto_26

    :cond_41
    const/16 v13, 0x9

    goto/16 :goto_b3

    :sswitch_45
    const-string/jumbo v13, "libraries"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4f

    goto :goto_26

    :cond_4f
    const/16 v13, 0x8

    goto/16 :goto_b3

    :sswitch_53
    const-string/jumbo v13, "packages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5d

    goto :goto_26

    :cond_5d
    const/4 v13, 0x7

    goto :goto_b3

    :sswitch_5f
    const-string/jumbo v13, "instrumentation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_69

    goto :goto_26

    :cond_69
    const/4 v13, 0x6

    goto :goto_b3

    :sswitch_6b
    const-string/jumbo v13, "users"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_75

    goto :goto_26

    :cond_75
    const/4 v13, 0x5

    goto :goto_b3

    :sswitch_77
    const-string/jumbo v13, "sdks"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_81

    goto :goto_26

    :cond_81
    move v13, v2

    goto :goto_b3

    :sswitch_83
    const-string/jumbo v13, "features"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8d

    goto :goto_26

    :cond_8d
    move v13, v3

    goto :goto_b3

    :sswitch_8f
    const-string/jumbo v13, "package"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_99

    goto :goto_26

    :cond_99
    move v13, v4

    goto :goto_b3

    :sswitch_9b
    const-string/jumbo v13, "permission-groups"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a5

    goto :goto_26

    :cond_a5
    move v13, v5

    goto :goto_b3

    :sswitch_a7
    const-string/jumbo v13, "staged-sessions"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b2

    goto/16 :goto_26

    :cond_b2
    move v13, v7

    :goto_b3
    packed-switch v13, :pswitch_data_3c2

    const-string v0, "Error: unknown list type \'"

    const-string v1, "\'"

    invoke-static {v6, v0, v8, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :pswitch_be  #0xa
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInitialNonStoppedSystemPackages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v7

    :goto_d2
    if-ge v3, v2, :cond_38d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v3, v5

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "package:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_d2

    :pswitch_e8  #0x9
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8

    move v15, v2

    move v14, v3

    move v13, v4

    move v2, v7

    move v3, v2

    move v4, v3

    move v6, v4

    move v10, v6

    move/from16 v16, v9

    :goto_f6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_152

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_3dc

    :goto_103
    move/from16 v13, v16

    goto :goto_13a

    :sswitch_106
    const-string v13, "-u"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10f

    goto :goto_103

    :cond_10f
    move v13, v15

    goto :goto_13a

    :sswitch_111
    const-string v13, "-s"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11a

    goto :goto_103

    :cond_11a
    move v13, v14

    goto :goto_13a

    :sswitch_11c
    const-string v13, "-g"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_125

    goto :goto_103

    :cond_125
    const/4 v13, 0x2

    goto :goto_13a

    :sswitch_127
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12e

    goto :goto_103

    :cond_12e
    move v13, v5

    goto :goto_13a

    :sswitch_130
    const-string v13, "-d"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_139

    goto :goto_103

    :cond_139
    move v13, v7

    :goto_13a
    packed-switch v13, :pswitch_data_3f2

    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_145  #0x4
    move v10, v5

    goto :goto_150

    :pswitch_147  #0x3
    move v2, v5

    move v3, v2

    move v4, v3

    goto :goto_150

    :pswitch_14b  #0x2
    move v2, v5

    goto :goto_150

    :pswitch_14d  #0x1
    move v3, v5

    goto :goto_150

    :pswitch_14f  #0x0
    move v6, v5

    :goto_150
    const/4 v13, 0x2

    goto :goto_f6

    :cond_152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_177

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v9, v7}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    move v13, v7

    :goto_164
    if-ge v13, v12, :cond_173

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PermissionGroupInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v5

    goto :goto_164

    :cond_173
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17e

    :cond_177
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17e
    const-string v9, ""

    if-eqz v6, :cond_1a2

    const-string v5, "Dangerous Permissions:"

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    if-eqz v10, :cond_38d

    const-string/jumbo v0, "Normal Permissions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    return v7

    :cond_1a2
    if-eqz v10, :cond_1b4

    const-string v0, "Dangerous and Normal Permissions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    return v7

    :cond_1b4
    const-string v0, "All Permissions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v5, -0x2710

    const/16 v6, 0x2710

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    return v7

    :pswitch_1c6  #0x8
    move/from16 v16, v9

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    move v2, v7

    :goto_1cd
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e5

    const-string v2, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e3

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :cond_1e3
    move v2, v5

    goto :goto_1cd

    :cond_1e5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f5

    goto/16 :goto_38d

    :cond_1f5
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v7

    :goto_207
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_38d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "library:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_22c

    const-string v8, " path:"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_22c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/2addr v4, v5

    goto :goto_207

    :pswitch_231  #0x6
    move/from16 v16, v9

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    move v3, v7

    :goto_238
    :try_start_238
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26e

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v8, 0x5d9

    if-eq v6, v8, :cond_247

    goto :goto_24f

    :cond_247
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24f

    move v3, v5

    goto :goto_238

    :cond_24f
    :goto_24f
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_259

    move-object v11, v4

    goto :goto_238

    :cond_259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26b
    .catch Ljava/lang/RuntimeException; {:try_start_238 .. :try_end_26b} :catch_26c

    return v16

    :catch_26c
    move-exception v0

    goto :goto_2c5

    :cond_26e
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const v1, 0x402000

    invoke-virtual {v0, v11, v1, v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_28a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_28b

    :cond_28a
    move v1, v7

    :goto_28b
    move v4, v7

    :goto_28c
    if-ge v4, v1, :cond_38d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/InstrumentationInfo;

    const-string/jumbo v8, "instrumentation:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_2a4

    iget-object v8, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2a4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " (target="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v4, v5

    goto :goto_28c

    :goto_2c5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v16

    :pswitch_2db  #0x5
    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const-string/jumbo v1, "list"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v13

    invoke-virtual {v0}, Landroid/os/ShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v14

    invoke-interface/range {v8 .. v14}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    return v7

    :pswitch_301  #0x4
    invoke-virtual {v0, v7, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result v0

    return v0

    :pswitch_306  #0x3
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_323

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_324

    :cond_323
    move v2, v7

    :goto_324
    move v3, v7

    :goto_325
    if-ge v3, v2, :cond_38d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    const-string/jumbo v6, "feature:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_34a

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_346

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_346
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_362

    :cond_34a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reqGlEsVersion=0x"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_362
    add-int/2addr v3, v5

    goto :goto_325

    :pswitch_364  #0x2, 0x7
    invoke-virtual {v0, v7, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    move-result v0

    return v0

    :pswitch_369  #0x1
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {v0, v7}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v7

    :goto_378
    if-ge v3, v2, :cond_38d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    const-string/jumbo v6, "permission group:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v3, v5

    goto :goto_378

    :cond_38d
    :goto_38d
    return v7

    :pswitch_38e  #0x0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    move-result v0

    return v0

    nop

    :sswitch_data_394
    .sparse-switch
        -0x431ede9c -> :sswitch_a7
        -0x3b73d86e -> :sswitch_9b
        -0x301acbba -> :sswitch_8f
        -0x11531bc3 -> :sswitch_83
        0x35cb79 -> :sswitch_77
        0x6a68e08 -> :sswitch_6b
        0x20752f6e -> :sswitch_5f
        0x2cc154ed -> :sswitch_53
        0x3071b299 -> :sswitch_45
        0x4392f484 -> :sswitch_37
        0x6a7808c2 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_38e  #00000000
        :pswitch_369  #00000001
        :pswitch_364  #00000002
        :pswitch_306  #00000003
        :pswitch_301  #00000004
        :pswitch_2db  #00000005
        :pswitch_231  #00000006
        :pswitch_364  #00000007
        :pswitch_1c6  #00000008
        :pswitch_e8  #00000009
        :pswitch_be  #0000000a
    .end packed-switch

    :sswitch_data_3dc
    .sparse-switch
        0x5d7 -> :sswitch_130
        0x5d9 -> :sswitch_127
        0x5da -> :sswitch_11c
        0x5e6 -> :sswitch_111
        0x5e8 -> :sswitch_106
    .end sparse-switch

    :pswitch_data_3f2
    .packed-switch 0x0
        :pswitch_14f  #00000000
        :pswitch_14d  #00000001
        :pswitch_14b  #00000002
        :pswitch_147  #00000003
        :pswitch_145  #00000004
    .end packed-switch
.end method

.method public final runListPackages(ZZ)I
    .registers 45

    move-object/from16 v1, p0

    const-string v2, "Error: "

    if-eqz p2, :cond_b

    const-string/jumbo v0, "sdk:"

    :goto_9
    move-object v3, v0

    goto :goto_f

    :cond_b
    const-string/jumbo v0, "package:"

    goto :goto_9

    :goto_f
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    move/from16 v7, p1

    const/4 v0, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_28
    :pswitch_28  #0x5
    :try_start_28
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/16 v21, -0x1

    const/high16 v22, 0x200000

    const/high16 v23, 0x4000000

    if-eqz v5, :cond_16e

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_404

    goto/16 :goto_108

    :sswitch_3d
    const-string v6, "--apex-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xc

    goto/16 :goto_10a

    :catch_49
    move-exception v0

    goto/16 :goto_3ee

    :sswitch_4c
    const-string v6, "--match-libraries"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0x10

    goto/16 :goto_10a

    :sswitch_58
    const-string v6, "--user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xe

    goto/16 :goto_10a

    :sswitch_64
    const-string v6, "--show-stopped"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0x11

    goto/16 :goto_10a

    :sswitch_70
    const-string v6, "--factory-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xd

    goto/16 :goto_10a

    :sswitch_7c
    const-string v6, "--uid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xf

    goto/16 :goto_10a

    :sswitch_88
    const-string v6, "-u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0x9

    goto/16 :goto_10a

    :sswitch_94
    const-string v6, "-s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x6

    goto/16 :goto_10a

    :sswitch_9f
    const-string v6, "-q"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x7

    goto/16 :goto_10a

    :sswitch_aa
    const-string v6, "-l"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x5

    goto :goto_10a

    :sswitch_b4
    const-string v6, "-i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x4

    goto :goto_10a

    :sswitch_be
    const-string v6, "-f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x3

    goto :goto_10a

    :sswitch_c8
    const-string v6, "-e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x1

    goto :goto_10a

    :sswitch_d2
    const-string v6, "-d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    move/from16 v6, v20

    goto :goto_10a

    :sswitch_dd
    const-string v6, "-a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/4 v6, 0x2

    goto :goto_10a

    :sswitch_e7
    const-string v6, "-U"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0x8

    goto :goto_10a

    :sswitch_f2
    const-string v6, "-3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xa

    goto :goto_10a

    :sswitch_fd
    const-string v6, "--show-versioncode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    const/16 v6, 0xb

    goto :goto_10a

    :cond_108
    :goto_108
    move/from16 v6, v21

    :goto_10a
    packed-switch v6, :pswitch_data_44e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v21

    :pswitch_122  #0x11
    const/16 v17, 0x1

    goto/16 :goto_28

    :pswitch_126  #0x10
    or-int v0, v0, v23

    goto/16 :goto_28

    :pswitch_12a  #0xf
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :pswitch_132  #0x8
    const/16 v19, 0x1

    goto/16 :goto_28

    :pswitch_136  #0xe
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8
    :try_end_13e
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_13e} :catch_49

    goto/16 :goto_28

    :pswitch_140  #0xd
    or-int v0, v0, v22

    goto/16 :goto_28

    :pswitch_144  #0xc
    const/high16 v5, 0x40000000  # 2.0f

    or-int/2addr v0, v5

    const/4 v14, 0x1

    goto/16 :goto_28

    :pswitch_14a  #0xb
    const/16 v16, 0x1

    goto/16 :goto_28

    :pswitch_14e  #0xa
    const/4 v13, 0x1

    goto/16 :goto_28

    :pswitch_151  #0x9
    or-int/lit16 v0, v0, 0x2000

    goto/16 :goto_28

    :pswitch_155  #0x7
    const/4 v15, 0x1

    goto/16 :goto_28

    :pswitch_158  #0x6
    const/4 v12, 0x1

    goto/16 :goto_28

    :pswitch_15b  #0x4
    const/16 v18, 0x1

    goto/16 :goto_28

    :pswitch_15f  #0x3
    const/4 v7, 0x1

    goto/16 :goto_28

    :pswitch_162  #0x2
    const v5, 0x20402000

    or-int/2addr v0, v5

    goto/16 :goto_28

    :pswitch_168  #0x1
    const/4 v11, 0x1

    goto/16 :goto_28

    :pswitch_16b  #0x0
    const/4 v10, 0x1

    goto/16 :goto_28

    :cond_16e
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v6, :cond_196

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v6

    if-eqz v6, :cond_196

    if-eqz v5, :cond_186

    const-string/jumbo v6, "com.baidu.carlife"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_188

    :cond_186
    move/from16 v6, v20

    :goto_188
    if-nez v6, :cond_19a

    const-string/jumbo v6, "carlife"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19a

    if-nez v5, :cond_196

    goto :goto_19a

    :cond_196
    move/from16 v25, v0

    const/4 v6, 0x1

    goto :goto_1a1

    :cond_19a
    :goto_19a
    const-string/jumbo v0, "package:com.baidu.carlife"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return v20

    :goto_1a1
    new-array v0, v6, [I

    aput v8, v0, v20

    move/from16 v6, v21

    if-ne v8, v6, :cond_1b5

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    :cond_1b5
    move-object v6, v0

    if-eqz p2, :cond_1be

    or-int v0, v25, v23

    move v8, v0

    :goto_1bb
    move/from16 v23, v7

    goto :goto_1c1

    :cond_1be
    move/from16 v8, v25

    goto :goto_1bb

    :goto_1c1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move/from16 v25, v10

    array-length v10, v6

    move-object/from16 v26, v6

    move/from16 v6, v20

    :goto_1cd
    if-ge v6, v10, :cond_3b0

    aget v0, v26, v6

    move/from16 v27, v6

    :try_start_1d3
    const-string/jumbo v6, "runListPackages"
    :try_end_1d6
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1d6} :catch_381

    move/from16 v28, v10

    move/from16 v10, v20

    :try_start_1da
    invoke-static {v0, v10, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v6
    :try_end_1de
    .catch Ljava/lang/RuntimeException; {:try_start_1da .. :try_end_1de} :catch_371

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    move/from16 v29, v11

    move/from16 v30, v12

    int-to-long v11, v8

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    move/from16 v31, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v32, v13

    const/4 v13, 0x0

    :goto_1f6
    if-ge v13, v8, :cond_36a

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move/from16 v34, v8

    move-object/from16 v8, v33

    check-cast v8, Landroid/content/pm/PackageInfo;

    move-object/from16 v33, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v13

    if-eqz v5, :cond_221

    iget-object v13, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_221

    move/from16 v38, v0

    move-object/from16 v36, v5

    :goto_219
    move/from16 v24, v6

    move/from16 p1, v9

    const/16 v37, 0x1

    goto/16 :goto_35a

    :cond_221
    iget-boolean v13, v8, Landroid/content/pm/PackageInfo;->isApex:Z

    move-object/from16 v36, v5

    const/4 v5, -0x1

    if-eq v9, v5, :cond_233

    if-nez v13, :cond_233

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v9, :cond_233

    move/from16 v38, v0

    goto :goto_219

    :cond_233
    if-nez v13, :cond_242

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v37, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_244

    move/from16 v5, v37

    goto :goto_245

    :cond_242
    const/16 v37, 0x1

    :cond_244
    const/4 v5, 0x0

    :goto_245
    move/from16 p1, v5

    if-nez v13, :cond_252

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_252

    move/from16 v5, v37

    goto :goto_253

    :cond_252
    const/4 v5, 0x0

    :goto_253
    if-eqz v25, :cond_260

    if-nez v5, :cond_258

    goto :goto_260

    :cond_258
    :goto_258
    move/from16 v38, v0

    move/from16 v24, v6

    move/from16 p1, v9

    goto/16 :goto_35a

    :cond_260
    :goto_260
    if-eqz v29, :cond_264

    if-eqz v5, :cond_258

    :cond_264
    if-eqz v30, :cond_268

    if-eqz p1, :cond_258

    :cond_268
    if-eqz v32, :cond_26c

    if-nez p1, :cond_258

    :cond_26c
    if-eqz v14, :cond_271

    if-nez v13, :cond_271

    goto :goto_258

    :cond_271
    if-eqz v15, :cond_285

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    move/from16 p1, v9

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_287

    :goto_27f
    move/from16 v38, v0

    move/from16 v24, v6

    goto/16 :goto_35a

    :cond_285
    move/from16 p1, v9

    :cond_287
    if-eqz p2, :cond_2df

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9, v11, v12, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    if-nez v5, :cond_294

    goto :goto_27f

    :cond_294
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v38, v0

    const/4 v0, 0x0

    :goto_29f
    if-ge v0, v9, :cond_2d8

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/SharedLibraryInfo;

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v0

    move-object/from16 v41, v5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v6

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2db

    :cond_2d1
    move/from16 v24, v6

    add-int/lit8 v0, v40, 0x1

    move-object/from16 v5, v41

    goto :goto_29f

    :cond_2d8
    move/from16 v24, v6

    const/4 v0, 0x0

    :goto_2db
    if-nez v0, :cond_2e5

    goto/16 :goto_35a

    :cond_2df
    move/from16 v38, v0

    move/from16 v24, v6

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_2e5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v23, :cond_2f6

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f6
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_311

    const-string v0, " versionCode:"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_30a

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_311

    :cond_30a
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_311
    :goto_311
    if-eqz v17, :cond_32a

    const-string v0, " stopped="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int v0, v0, v22

    if-eqz v0, :cond_324

    const-string/jumbo v0, "true"

    goto :goto_327

    :cond_324
    const-string/jumbo v0, "false"

    :goto_327
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32a
    if-eqz v18, :cond_33c

    const-string v0, "  installer="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v19, :cond_35a

    if-nez v13, :cond_35a

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35a
    :goto_35a
    add-int/lit8 v13, v35, 0x1

    move/from16 v9, p1

    move/from16 v6, v24

    move-object/from16 v10, v33

    move/from16 v8, v34

    move-object/from16 v5, v36

    move/from16 v0, v38

    goto/16 :goto_1f6

    :cond_36a
    move-object/from16 v36, v5

    move/from16 p1, v9

    const/16 v37, 0x1

    goto :goto_39c

    :catch_371
    move-exception v0

    :goto_372
    move-object/from16 v36, v5

    move/from16 v31, v8

    move/from16 p1, v9

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v32, v13

    const/16 v37, 0x1

    goto :goto_385

    :catch_381
    move-exception v0

    move/from16 v28, v10

    goto :goto_372

    :goto_385
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_39c
    add-int/lit8 v6, v27, 0x1

    move/from16 v9, p1

    move/from16 v10, v28

    move/from16 v11, v29

    move/from16 v12, v30

    move/from16 v8, v31

    move/from16 v13, v32

    move-object/from16 v5, v36

    const/16 v20, 0x0

    goto/16 :goto_1cd

    :cond_3b0
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e7

    const-string v2, " uid:"

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    goto :goto_3b8

    :cond_3eb
    const/16 v20, 0x0

    return v20

    :goto_3ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, -0x1

    return v21

    :sswitch_data_404
    .sparse-switch
        -0x1d6f426b -> :sswitch_fd
        0x5a6 -> :sswitch_f2
        0x5c8 -> :sswitch_e7
        0x5d4 -> :sswitch_dd
        0x5d7 -> :sswitch_d2
        0x5d8 -> :sswitch_c8
        0x5d9 -> :sswitch_be
        0x5dc -> :sswitch_b4
        0x5df -> :sswitch_aa
        0x5e4 -> :sswitch_9f
        0x5e6 -> :sswitch_94
        0x5e8 -> :sswitch_88
        0x2905ab0 -> :sswitch_7c
        0x2e2ebc2f -> :sswitch_70
        0x3ca6989d -> :sswitch_64
        0x4f7b216b -> :sswitch_58
        0x574ac2f1 -> :sswitch_4c
        0x6bd72bd7 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_44e
    .packed-switch 0x0
        :pswitch_16b  #00000000
        :pswitch_168  #00000001
        :pswitch_162  #00000002
        :pswitch_15f  #00000003
        :pswitch_15b  #00000004
        :pswitch_28  #00000005
        :pswitch_158  #00000006
        :pswitch_155  #00000007
        :pswitch_132  #00000008
        :pswitch_151  #00000009
        :pswitch_14e  #0000000a
        :pswitch_14a  #0000000b
        :pswitch_144  #0000000c
        :pswitch_140  #0000000d
        :pswitch_136  #0000000e
        :pswitch_12a  #0000000f
        :pswitch_126  #00000010
        :pswitch_122  #00000011
    .end packed-switch
.end method

.method public final runListStagedSessions()I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, -0x1

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "  "

    const/16 v5, 0x78

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_f
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :goto_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_5e

    if-eqz v4, :cond_69

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_bc

    :goto_21
    move v5, v1

    goto :goto_43

    :sswitch_23
    const-string v5, "--only-ready"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_21

    :cond_2c
    const/4 v5, 0x2

    goto :goto_43

    :sswitch_2e
    const-string v5, "--only-sessionid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_21

    :cond_37
    move v5, v0

    goto :goto_43

    :sswitch_39
    const-string v5, "--only-parent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_21

    :cond_42
    const/4 v5, 0x0

    :goto_43
    packed-switch v5, :pswitch_data_ca

    :try_start_46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: Unknown option: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_5e

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v1

    :catchall_5e
    move-exception p0

    goto :goto_b3

    :pswitch_60  #0x2
    :try_start_60
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    goto :goto_14

    :pswitch_63  #0x1
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    goto :goto_14

    :pswitch_66  #0x0
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_5e

    goto :goto_14

    :cond_69
    :try_start_69
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-static {v2, p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7c} :catch_80
    .catchall {:try_start_69 .. :try_end_7c} :catchall_5e

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v0

    :catch_80
    move-exception p0

    :try_start_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_81 .. :try_end_af} :catchall_5e

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    return v1

    :goto_b3
    :try_start_b3
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_bb

    :catchall_b7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_bb
    throw p0

    :sswitch_data_bc
    .sparse-switch
        -0x7a952fb5 -> :sswitch_39
        -0x6e25b510 -> :sswitch_2e
        0x4ebe19e2 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_63  #00000001
        :pswitch_60  #00000002
    .end packed-switch
.end method

.method public final runLogVisibility()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x1

    :cond_5
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_29

    const-string v2, "--disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_27
    const/4 v2, 0x0

    goto :goto_6

    :cond_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-eqz v3, :cond_62

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-interface {p0, v0, v2}, Lcom/android/server/pm/FeatureConfig;->enableLogging(IZ)V

    return v1

    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No package found for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only the system or shell can set visibility logging."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runMarkGuestForDeletion()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user id specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1c

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :cond_1c
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: could not mark guest for deletion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final runModifySafeModeList(Z)I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: package name not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSafeModeAllowList:Ljava/util/Set;

    if-nez v2, :cond_23

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_23

    :catch_21
    move-exception p1

    goto :goto_36

    :cond_23
    :goto_23
    if-eqz p1, :cond_29

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_29
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2c
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    check-cast p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mSafeModeAllowList:Ljava/util/Set;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_21

    const/4 p0, 0x0

    return p0

    :goto_36
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runMovePackage()I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: package name not specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x0

    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getMoveStatus(I)I

    move-result v2

    :goto_2b
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_3d

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getMoveStatus(I)I

    move-result v2

    goto :goto_2b

    :cond_3d
    const/16 v0, -0x64

    if-ne v2, v0, :cond_4d

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Failure ["

    const-string/jumbo v3, "]"

    invoke-static {v2, p0, v0, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final runMovePrimaryStorage()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getMoveStatus(I)I

    move-result v1

    :goto_1a
    invoke-static {v1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v2

    if-nez v2, :cond_2c

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getMoveStatus(I)I

    move-result v1

    goto :goto_1a

    :cond_2c
    const/16 v0, -0x64

    if-ne v1, v0, :cond_3c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Failure ["

    const-string/jumbo v2, "]"

    invoke-static {v1, p0, v0, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runPath()I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_48

    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    move-result v3

    if-eqz v3, :cond_48

    const-string/jumbo v3, "com.baidu.carlife"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "package:/data/app/~~iNjKNe-7WKMgdZXJDtvyIw==/com.baidu.carlife-TV26JIouWEDzMsoGghKuXg==/base.apk"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return v1

    :cond_48
    const/16 v1, -0x2710

    const-string/jumbo v3, "runPath"

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final runQueryIntentActivities()V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_8e

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_24

    goto :goto_7d

    :cond_24
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " activities found:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    const-string v4, "  Activity #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_5f
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7c

    const-string v1, ""

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7c
    return-void

    :cond_7d
    :goto_7d
    const-string/jumbo p0, "No activities found"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_8e
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runQueryIntentReceivers()V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_8e

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_24

    goto :goto_7d

    :cond_24
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " receivers found:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    const-string v4, "  Receiver #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_5f
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7c

    const-string v1, ""

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7c
    return-void

    :cond_7d
    :goto_7d
    const-string/jumbo p0, "No receivers found"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_8e
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runQueryIntentServices()V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_8e

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_24

    goto :goto_7d

    :cond_24
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " services found:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7c

    const-string v4, "  Service #"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_5f
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    :goto_64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7c

    const-string v1, ""

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7c
    return-void

    :cond_7d
    :goto_7d
    const-string/jumbo p0, "No services found"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_8e
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runRemoveUser()I
    .registers 11

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_19a

    :goto_13
    move v7, v1

    goto :goto_35

    :sswitch_15
    const-string v7, "--wait"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_13

    :cond_1e
    move v7, v0

    goto :goto_35

    :sswitch_20
    const-string v7, "-w"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    goto :goto_13

    :cond_29
    move v7, v2

    goto :goto_35

    :sswitch_2b
    const-string v7, "--set-ephemeral-if-in-use"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    goto :goto_13

    :cond_34
    move v7, v3

    :goto_35
    packed-switch v7, :pswitch_data_1a8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: unknown option: "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_46  #0x1, 0x2
    move v5, v2

    goto :goto_6

    :pswitch_48  #0x0
    move v4, v2

    goto :goto_6

    :cond_4a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user id specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_5a
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v6

    const-string/jumbo v7, "PackageManagerShellCommand"

    if-eqz v4, :cond_e0

    const-string/jumbo v4, "Removing "

    const-string v5, " or set as ephemeral if in use."

    invoke-static {v1, v4, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1, v3}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_ce

    if-eqz v4, :cond_bb

    if-eq v4, v2, :cond_a8

    if-eq v4, v0, :cond_95

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Error: couldn\'t remove or mark ephemeral user id %d\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2

    :cond_95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Success: user %d is already being removed\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_a8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Success: user %d set as ephemeral\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_bb
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Success: user %d removed\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :cond_ce
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Error: user %d is a permanent admin main user\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2

    :cond_e0
    const-string v0, "Error: couldn\'t remove user id "

    if-eqz v5, :cond_16f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Removing (and waiting for completion) user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v5, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    const-class v7, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    :try_start_10b
    invoke-interface {v6, v1}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v6

    if-eqz v6, :cond_138

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0xa

    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_134

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "Error: Remove user %d timed out\n"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_12c
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_12c} :catch_132
    .catchall {:try_start_10b .. :try_end_12c} :catchall_130

    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    return v2

    :catchall_130
    move-exception p0

    goto :goto_16b

    :catch_132
    move-exception v0

    goto :goto_14f

    :cond_134
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    goto :goto_187

    :cond_138
    :try_start_138
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_14b} :catch_132
    .catchall {:try_start_138 .. :try_end_14b} :catchall_130

    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    return v2

    :goto_14f
    :try_start_14f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v3, "Error: Remove user %d wait interrupted: %s\n"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_167
    .catchall {:try_start_14f .. :try_end_167} :catchall_130

    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    return v2

    :goto_16b
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    throw p0

    :cond_16f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Removing user "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v1}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_192

    :goto_187
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Success: removed user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_192
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v2

    :sswitch_data_19a
    .sparse-switch
        -0x4149182c -> :sswitch_2b
        0x5ea -> :sswitch_20
        0x4f7bc715 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_48  #00000000
        :pswitch_46  #00000001
        :pswitch_46  #00000002
    .end packed-switch
.end method

.method public final runRenameUser()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no user id specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1c

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    :cond_1c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "PackageManagerShellCommand"

    if-nez p0, :cond_2c

    const-string/jumbo v2, "Resetting name of user "

    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_2c
    const-string/jumbo v2, "Renaming user "

    const-string v3, " to \'"

    const-string v4, "\'"

    invoke-static {v0, v2, v3, p0, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runResetPermissions()V
    .registers 7

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_24

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "resetRuntimePermissions"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_4d

    aget v4, v1, v3

    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;I)V

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_4d
    return-void
.end method

.method public final runResolveActivity()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_39

    :try_start_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    if-nez v0, :cond_20

    const-string/jumbo p0, "No activity found"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e

    :cond_20
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v1, ""

    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    invoke-static {v2, v1, v0, v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2e} :catch_2f

    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed calling service"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_39
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runRollbackApp()I
    .registers 14

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    const-string v1, "--staged-ready-timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_38

    const-string p0, "Error: package name not specified"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.shell"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_46} :catch_ea

    new-instance v6, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    const-class v7, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :cond_5c
    :goto_5c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_88

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_70
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_70

    move-object v9, v10

    goto :goto_5c

    :cond_88
    if-nez v9, :cond_95

    const-string/jumbo p0, "No available rollbacks for: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_95
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    invoke-virtual {v5, v3, v7, v10}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_ce

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Failure ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_ce
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v3

    if-eqz v3, :cond_e3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_e3

    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v3

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_e3
    const-string/jumbo p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :catch_ea
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final runSetDistractingRestriction()I
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5a

    const-string v6, "--flag"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    const-string v3, "--user"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_8

    :cond_31
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "hide-notifications"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string/jumbo v6, "hide-from-suggestions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    const-string/jumbo p0, "Unrecognized flag: "

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_55
    or-int/2addr v4, v0

    goto :goto_8

    :cond_57
    or-int/lit8 v4, v4, 0x2

    goto :goto_8

    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string p0, "Error: package name not specified"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_6a
    :try_start_6a
    const-string/jumbo v6, "set-distracting"

    const/16 v7, -0x2710

    invoke-static {v3, v7, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v5, v4, v3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    if-lez v3, :cond_9f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set restriction for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_9c} :catch_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_9c} :catch_9d

    return v0

    :catch_9d
    move-exception p0

    goto :goto_a0

    :cond_9f
    return v2

    :goto_a0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runSetEnabledSetting(I)I
    .registers 13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package or component specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_2a
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Failed to change state of package: "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_41
    const/16 v2, -0x2710

    const-string/jumbo v4, "runSetEnabledSetting"

    invoke-static {v0, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v6

    move v9, v6

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const-string v0, " new state: "

    if-nez v6, :cond_8e

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shell:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    move v4, p1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string/jumbo v2, "Package "

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v3, v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_8e
    move v4, p1

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const/4 v8, 0x0

    const-string/jumbo v10, "shell"

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Component "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v6, v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runSetHarmfulAppWarning()I
    .registers 4

    const/4 v0, -0x2

    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_27
    const/16 v1, -0x2710

    const-string/jumbo v2, "runSetHarmfulAppWarning"

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetHiddenSetting(Z)I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package or component specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/16 v3, -0x2710

    const-string/jumbo v4, "runSetHiddenSetting"

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v3, v2, p1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string/jumbo v3, "Package "

    const-string v4, " new hidden state: "

    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runSetHomeActivity()I
    .registers 13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_1f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_36

    :goto_34
    move-object v7, v3

    goto :goto_47

    :cond_36
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_42

    const-string p0, "Error: invalid component name"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_42
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :goto_47
    const/16 v3, -0x2710

    const-string/jumbo v5, "runSetHomeActivity"

    invoke-static {v2, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    :try_start_55
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/role/RoleManager;

    const-string/jumbo v6, "android.app.role.HOME"

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v11, v3}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8a

    const-string/jumbo p0, "Success"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :catch_87
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :cond_8a
    const-string p0, "Error: Failed to set default home."

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_8f} :catch_87

    return v4

    :goto_90
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runSetInstallLocation()I
    .registers 5

    const-string v0, "Error: install location has to be a number."

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no install location specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_29

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setInstallLocation(I)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_27
    const/4 p0, 0x0

    return p0

    :catch_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runSetInstaller()I
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    if-nez v1, :cond_e

    goto :goto_35

    :cond_e
    sget v3, Lcom/android/server/om/SemSamsungThemeUtils;->$r8$clinit:I

    const-string/jumbo v3, "com.samsung.android.themecenter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Set installer failed with internal error"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Success"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Must provide both target and installer package names"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public final runSetPermissionEnforced()I
    .registers 3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no permission specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no enforcement specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final runSetSilentUpdatesPolicy()I
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v7, v5

    move v6, v4

    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5b

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_d0

    :goto_18
    move v9, v0

    goto :goto_3a

    :sswitch_1a
    const-string v9, "--allow-unlimited-silent-updates"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto :goto_18

    :cond_23
    const/4 v9, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v9, "--throttle-time"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto :goto_18

    :cond_2e
    move v9, v1

    goto :goto_3a

    :sswitch_30
    const-string v9, "--reset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto :goto_18

    :cond_39
    move v9, v4

    :goto_3a
    packed-switch v9, :pswitch_data_de

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_47  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :pswitch_4c  #0x1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_b

    :pswitch_59  #0x0
    move v6, v1

    goto :goto_b

    :cond_5b
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_79

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Invalid value for \"--throttle-time\":"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_79
    :try_start_79
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object p0

    if-eqz v6, :cond_8c

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->setSilentUpdatesThrottleTime(J)V

    return v1

    :cond_8c
    if-eqz v7, :cond_94

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageInstallerService;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    :cond_94
    if-eqz v5, :cond_a2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->setSilentUpdatesThrottleTime(J)V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_9f} :catch_a0

    return v1

    :catch_a0
    move-exception p0

    goto :goto_a3

    :cond_a2
    return v1

    :goto_a3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failure ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_d0
    .sparse-switch
        -0x60476451 -> :sswitch_30
        0x2dfd71f0 -> :sswitch_25
        0x3bbbf162 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_4c  #00000001
        :pswitch_47  #00000002
    .end packed-switch
.end method

.method public final runSetStoppedState()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/16 v3, -0x2710

    const-string/jumbo v4, "runSetStoppedState"

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setPackageStoppedState(Ljava/lang/String;ZI)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, "Package "

    const-string v5, " new stopped state: "

    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final runSetUserRestriction()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "--user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    goto :goto_34

    :cond_2b
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move v5, v1

    :goto_34
    const/16 p0, -0x2710

    const-string/jumbo v3, "runSetUserRestriction"

    invoke-static {v0, p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result p0

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    invoke-interface {v0, v2, v5, p0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    return v1

    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: valid value not specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runStreamingInstall()I
    .registers 4

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-nez v2, :cond_13

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    move-result p0

    return p0
.end method

.method public final runSuspend(IZ)I
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v6

    move-object v8, v7

    :goto_16
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e1

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1c6

    goto/16 :goto_7d

    :sswitch_26
    const-string v12, "--user"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2f

    goto :goto_7d

    :cond_2f
    const/4 v11, 0x7

    goto :goto_7d

    :sswitch_31
    const-string v12, "--les"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3a

    goto :goto_7d

    :cond_3a
    const/4 v11, 0x6

    goto :goto_7d

    :sswitch_3c
    const-string v12, "--lel"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_45

    goto :goto_7d

    :cond_45
    const/4 v11, 0x5

    goto :goto_7d

    :sswitch_47
    const-string v12, "--led"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    goto :goto_7d

    :cond_50
    move v11, v1

    goto :goto_7d

    :sswitch_52
    const-string v12, "--aes"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5b

    goto :goto_7d

    :cond_5b
    const/4 v11, 0x3

    goto :goto_7d

    :sswitch_5d
    const-string v12, "--ael"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    goto :goto_7d

    :cond_66
    const/4 v11, 0x2

    goto :goto_7d

    :sswitch_68
    const-string v12, "--aed"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_71

    goto :goto_7d

    :cond_71
    move v11, v2

    goto :goto_7d

    :sswitch_73
    const-string v12, "--dialogMessage"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7c

    goto :goto_7d

    :cond_7c
    move v11, v6

    :goto_7d
    packed-switch v11, :pswitch_data_1e8

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_8a  #0x7
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    goto :goto_16

    :pswitch_93  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    if-nez p2, :cond_9f

    goto/16 :goto_16

    :cond_9f
    const-string v13, "--a"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a9

    move-object v13, v4

    goto :goto_aa

    :cond_a9
    move-object v13, v5

    :goto_aa
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v14, 0x64

    if-eq v10, v14, :cond_ce

    const/16 v14, 0x6c

    if-eq v10, v14, :cond_c1

    const/16 v14, 0x73

    if-eq v10, v14, :cond_bc

    goto/16 :goto_16

    :cond_bc
    invoke-virtual {v13, v11, v12}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_c1
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v11, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_16

    :cond_ce
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v13, v11, v14, v15}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_16

    :pswitch_db  #0x0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_16

    :cond_e1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f1

    const-string v0, "Error: package name not specified"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_f1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    if-nez v10, :cond_fd

    const-string/jumbo v10, "root"

    :goto_fa
    move-object/from16 v18, v10

    goto :goto_101

    :cond_fd
    const-string/jumbo v10, "com.android.shell"

    goto :goto_fa

    :goto_101
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_117

    new-instance v10, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v10}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    invoke-virtual {v10, v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v8

    move-object/from16 v16, v8

    goto :goto_119

    :cond_117
    move-object/from16 v16, v7

    :goto_119
    :try_start_119
    const-string/jumbo v8, "runSuspend"

    const/16 v10, -0x2710

    invoke-static {v9, v10, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v20

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12f

    :cond_12d
    move-object v10, v7

    goto :goto_145

    :cond_12f
    move v9, v6

    :goto_130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_12d

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v2, v10}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_143

    goto :goto_145

    :cond_143
    add-int/2addr v9, v2

    goto :goto_130

    :goto_145
    if-eqz v10, :cond_162

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: cmd restricted - package: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :catch_160
    move-exception v0

    goto :goto_1bd

    :cond_162
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v8

    if-lez v8, :cond_175

    move-object v14, v4

    goto :goto_176

    :cond_175
    move-object v14, v7

    :goto_176
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    if-lez v4, :cond_17e

    move-object v15, v5

    goto :goto_17f

    :cond_17e
    move-object v15, v7

    :goto_17f
    const/16 v19, 0x0

    move/from16 v17, p1

    move/from16 v13, p2

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    move/from16 v4, v20

    move v5, v6

    :goto_18b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1bc

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " new suspended state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v9, v7, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ba
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_1ba} :catch_160
    .catch Ljava/lang/IllegalArgumentException; {:try_start_119 .. :try_end_1ba} :catch_160

    add-int/2addr v5, v2

    goto :goto_18b

    :cond_1bc
    return v6

    :goto_1bd
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_1c6
    .sparse-switch
        -0x25a4801 -> :sswitch_73
        0x2900f20 -> :sswitch_68
        0x2900f28 -> :sswitch_5d
        0x2900f2f -> :sswitch_52
        0x290386b -> :sswitch_47
        0x2903873 -> :sswitch_3c
        0x290387a -> :sswitch_31
        0x4f7b216b -> :sswitch_26
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_db  #00000000
        :pswitch_93  #00000001
        :pswitch_93  #00000002
        :pswitch_93  #00000003
        :pswitch_93  #00000004
        :pswitch_93  #00000005
        :pswitch_93  #00000006
        :pswitch_8a  #00000007
    .end packed-switch
.end method

.method public final runTrimCaches()I
    .registers 13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no size specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-lt v3, v4, :cond_27

    const/16 v4, 0x39

    if-le v3, v4, :cond_24

    goto :goto_27

    :cond_24
    const-wide/16 v2, 0x1

    goto :goto_67

    :cond_27
    :goto_27
    const/16 v4, 0x4b

    if-eq v3, v4, :cond_60

    const/16 v4, 0x6b

    if-ne v3, v4, :cond_30

    goto :goto_60

    :cond_30
    const/16 v4, 0x4d

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_39

    goto :goto_5c

    :cond_39
    const/16 v4, 0x47

    if-eq v3, v4, :cond_58

    const/16 v4, 0x67

    if-ne v3, v4, :cond_42

    goto :goto_58

    :cond_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid suffix: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_58
    :goto_58
    const-wide/32 v3, 0x40000000

    goto :goto_62

    :cond_5c
    :goto_5c
    const-wide/32 v3, 0x100000

    goto :goto_62

    :cond_60
    :goto_60
    const-wide/16 v3, 0x400

    :goto_62
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-wide v2, v3

    :goto_67
    :try_start_67
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6b} :catch_97

    mul-long v8, v0, v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v0, 0x0

    :cond_7b
    move-object v7, v0

    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v11}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const/4 v10, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    monitor-enter v11

    :catch_88
    :goto_88
    :try_start_88
    iget-boolean p0, v11, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_90

    if-nez p0, :cond_93

    :try_start_8c
    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_88
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_88

    :catchall_90
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :cond_93
    :try_start_93
    monitor-exit v11

    return v5

    :goto_95
    monitor-exit v11
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_90

    throw p0

    :catch_97
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v2, "Error: expected number at: "

    invoke-static {p0, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final runUnarchive()I
    .registers 12

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v0, -0x1

    move v2, v0

    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_6

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_6

    const-string p0, "Failure [user "

    const-string v0, " doesn\'t exist]"

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_38
    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_42
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4e

    const-string p0, "Error: package name not specified"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_4e
    const/4 v0, 0x0

    const-string/jumbo v3, "runArchive"

    invoke-static {v2, v0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    :try_start_5b
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v2}, Landroid/os/UserHandle;-><init>(I)V

    check-cast v5, Lcom/android/server/pm/PackageInstallerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageArchiver;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;Z)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_78} :catch_7f

    const-string/jumbo p0, "Success"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :catch_7f
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runUninstall()I
    .registers 26

    move-object/from16 v1, p0

    const/4 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, "sys.boot_completed"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_19

    const-string v0, "Error: device is still booting."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_19
    move v9, v0

    move v4, v5

    const-wide/16 v10, -0x1

    :cond_1d
    :goto_1d
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_87

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_226

    :goto_2a
    move v13, v0

    goto :goto_4c

    :sswitch_2c
    const-string v13, "--versionCode"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_35

    goto :goto_2a

    :cond_35
    move v13, v2

    goto :goto_4c

    :sswitch_37
    const-string v13, "--user"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_40

    goto :goto_2a

    :cond_40
    move v13, v6

    goto :goto_4c

    :sswitch_42
    const-string v13, "-k"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4b

    goto :goto_2a

    :cond_4b
    move v13, v5

    :goto_4c
    packed-switch v13, :pswitch_data_234

    const-string v0, "Error: Unknown option: "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :pswitch_59  #0x2
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_1d

    :pswitch_62  #0x1
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v0, :cond_1d

    const/4 v12, -0x2

    if-eq v9, v12, :cond_1d

    const-class v12, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    if-nez v12, :cond_1d

    const-string v0, "Failure [user "

    const-string v1, " doesn\'t exist]"

    invoke-static {v9, v3, v0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :pswitch_85  #0x0
    move v4, v6

    goto :goto_1d

    :cond_87
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_93

    const-string v0, "Error: package name not specified"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_93
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    const/4 v14, 0x3

    invoke-virtual {v13, v14, v12}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_aa

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Failed to uninstall a package: "

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_aa
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    const-string/jumbo v15, "Success"

    const-wide/16 v16, -0x1

    const/4 v7, 0x0

    if-nez v14, :cond_ee

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v4, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget v8, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v8

    iput v2, v4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput-object v12, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v7, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    :try_start_ce
    invoke-virtual {v1, v2, v13, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    move-result v0
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_e7

    if-eqz v0, :cond_d8

    :goto_d4
    :try_start_d4
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_d7} :catch_df

    return v6

    :cond_d8
    :try_start_d8
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    move-result v0
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_e7

    if-eqz v0, :cond_e0

    goto :goto_d4

    :catch_df
    return v6

    :cond_e0
    :try_start_e0
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    return v5

    :catchall_e4
    move-exception v0

    move v6, v5

    goto :goto_e8

    :catchall_e7
    move-exception v0

    :goto_e8
    if-eqz v6, :cond_ed

    :try_start_ea
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_ed
    .catch Ljava/lang/RuntimeException; {:try_start_ea .. :try_end_ed} :catch_ed

    :catch_ed
    :cond_ed
    throw v0

    :cond_ee
    if-ne v9, v0, :cond_f1

    or-int/2addr v4, v2

    :cond_f1
    const-string/jumbo v0, "runUninstall"

    invoke-static {v9, v5, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v0

    new-instance v8, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    const-class v9, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    check-cast v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v13, v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    invoke-interface {v13, v12}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v13

    const-string/jumbo v14, "]"

    if-eqz v13, :cond_1b4

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v13

    if-eqz v13, :cond_1ab

    new-instance v13, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    move/from16 v18, v2

    iget-object v2, v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v13, v0, v6, v1, v12}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    and-int/lit8 v0, v4, 0x2

    const/4 v1, -0x5

    if-nez v0, :cond_13c

    const-string v0, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v13, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    move-object v6, v8

    goto/16 :goto_1f8

    :cond_13c
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v6, v8

    const-wide/32 v7, 0x40000000

    invoke-interface {v0, v12, v7, v8, v5}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_157

    const-string v0, " is not an apex package"

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1f8

    :cond_157
    cmp-long v4, v10, v16

    if-eqz v4, :cond_185

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    cmp-long v4, v7, v10

    if-eqz v4, :cond_185

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Active version "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is not equal to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1f8

    :cond_185
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_190
    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_19b} :catch_1a1

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {v13, v12, v1, v9}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1f8

    :catch_1a1
    const-string v0, "Failed to uninstall apex "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1f8

    :cond_1ab
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Not allowed to uninstall apexes"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b4
    move/from16 v18, v2

    move-object v6, v8

    and-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_1da

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/32 v7, 0x4000000

    invoke-virtual {v2, v12, v7, v8, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1ce

    const-string v1, "Failure [not installed for "

    invoke-static {v0, v3, v1, v14}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1cb
    const/16 v24, 0x1

    return v24

    :cond_1ce
    const/16 v24, 0x1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1da

    or-int/lit8 v4, v4, 0x4

    :cond_1da
    move/from16 v21, v4

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, v12, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/server/pm/PackageInstallerService;

    move/from16 v23, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    :goto_1f8
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_20a

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_20a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1cb

    :sswitch_data_226
    .sparse-switch
        0x5de -> :sswitch_42
        0x4f7b216b -> :sswitch_37
        0x704d4945 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_234
    .packed-switch 0x0
        :pswitch_85  #00000000
        :pswitch_62  #00000001
        :pswitch_59  #00000002
    .end packed-switch
.end method

.method public final runWaitForHandler(Z)I
    .registers 9

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-wide/32 v1, 0xea60

    :goto_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_29

    const-string v1, "--timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string p0, "Error: Unknown option: "

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_7

    :cond_29
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-gtz v3, :cond_41

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error: --timeout value must be positive: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_41
    :try_start_41
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->waitForHandler(JZ)Z

    move-result p0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_47} :catch_58

    if-eqz p0, :cond_51

    const-string/jumbo p0, "Success"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_51
    const-string/jumbo p0, "Timeout. PackageManager handlers are still busy."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_58
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failure ["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final setAppCategoryHintDeveloper()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->clearAppCategoryHintDeveloper(Ljava/lang/String;)V

    goto :goto_22

    :cond_19
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setAppCategoryHintDeveloper(Ljava/lang/String;I)V

    :goto_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string/jumbo v2, "app: "

    if-nez p0, :cond_3b

    const-string p0, " not found!"

    invoke-static {v1, v2, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3b
    const-string v3, ", category: "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v4
.end method

.method public final setAppCategoryHintUser()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->clearAppCategoryHintUser(Ljava/lang/String;)V

    goto :goto_22

    :cond_19
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->setAppCategoryHintUser(Ljava/lang/String;I)V

    :goto_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string/jumbo v2, "app: "

    if-nez p0, :cond_3b

    const-string p0, " not found!"

    invoke-static {v1, v2, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3b
    const-string v3, ", category: "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v4
.end method

.method public final setOrClearPermissionFlags(Z)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no package specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no permission specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4a

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no permission flags specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_4a
    move v6, v0

    :goto_4b
    if-eqz v5, :cond_80

    sget-object v7, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_70

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: specified flag "

    const-string v0, " is not one of "

    invoke-static {p1, v5, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_70
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    goto :goto_4b

    :cond_80
    const/16 v2, -0x2710

    const-string/jumbo v5, "runGrantRevokePermission"

    invoke-static {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move v5, v6

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    move v6, v0

    :goto_92
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual/range {v2 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    return v0
.end method

.method public final uninstallSystemUpdates(Ljava/lang/String;)I
    .registers 14

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    const-wide/32 v3, 0x102000

    const/4 v5, 0x1

    if-nez p1, :cond_20

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    goto :goto_2f

    :catch_1c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_ac

    :cond_20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    invoke-virtual {p0, p1, v3, v4, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v6

    :goto_2f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v2

    :cond_34
    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Uninstalling updates to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    new-instance v7, Landroid/content/pm/VersionedPackage;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v6, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageInstallerService;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageInstallerService;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "android.content.pm.extra.STATUS"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t uninstall package: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a0} :catch_1c

    move p1, v5

    goto :goto_34

    :cond_a2
    if-eqz p1, :cond_a5

    return v2

    :cond_a5
    const-string/jumbo p0, "Success"

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :goto_ac
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failure ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
