.class public final Lcom/android/server/pm/PackageSessionVerifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageParserSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mStagedSessions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;Landroid/os/Looper;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 2

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkActiveSessions(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_a
    :goto_a
    if-ge v2, v0, :cond_2b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    move-object v4, v3

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_a

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_a

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    if-nez p1, :cond_3b

    const/4 p0, 0x1

    if-gt v1, p0, :cond_31

    goto :goto_3b

    :cond_31
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x77

    const-string v0, "Cannot stage multiple sessions without checkpoint support"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_63

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000000

    const/4 v4, 0x0

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_84

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getMinimumSignatureSchemeVersionForTargetSdk(I)I

    move-result p0

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    invoke-static {v2, v1, p0}, Landroid/util/apk/ApkSignatureVerifier;->verify(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    const/16 v3, -0x16

    if-nez v2, :cond_67

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_42
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_64

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_63

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_63

    :cond_55
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "APK container signature of APEX package "

    const-string v1, " is not compatible with the one currently installed on device"

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_63
    :goto_63
    return-void

    :catchall_64
    move-exception p0

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0

    :cond_67
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Failed to verify APEX package "

    const-string v2, " : "

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, v3, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_84
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Attempting to install new APEX package "

    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x17

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_71

    :cond_7
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    goto :goto_71

    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0

    const-string/jumbo v2, "PackageSessionVerifier"

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mModulesInstallerPackageName:Ljava/lang/String;

    if-nez p0, :cond_38

    const-string/jumbo p0, "No modules installer defined"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6f

    :cond_3d
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/SystemConfig;->mAllowedVendorApexes:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_6b

    const-string/jumbo p0, "com.sec.android.app.samsungapps"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    const/4 v1, 0x1

    goto :goto_6f

    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to be updated"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_6b
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_6f
    if-eqz v1, :cond_72

    :goto_71
    return-void

    :cond_72
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo v1, "Update of APEX package "

    const-string v2, " is not allowed for "

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x16

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_d0

    :cond_12
    check-cast p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v0, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_25
    :goto_25
    if-ge v2, v1, :cond_d0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v6, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    if-ne v5, v6, :cond_4a

    goto :goto_25

    :cond_4a
    new-instance v5, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_61
    iget-wide v7, v5, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_b4

    iget-object v5, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v9, v5, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_69
    iget-wide v5, v5, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_b1

    cmp-long v5, v7, v5

    const-string v6, " has been staged already by session: "

    const-string v7, " in session: "

    const-string/jumbo v8, "Package: "

    const/16 v9, -0x77

    if-ltz v5, :cond_94

    invoke-static {v8, v0, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    goto :goto_25

    :cond_94
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-static {v8, v0, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v9, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_b1
    move-exception p0

    :try_start_b2
    monitor-exit v9
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p0

    :catchall_b4
    move-exception p0

    :try_start_b5
    monitor-exit v6
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0

    :cond_b7
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot stage session "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p2, p2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v0, " with package name null"

    invoke-static {p2, p1, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x16

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_d0
    :goto_d0
    return-void
.end method

.method public checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_83

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_83

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x16

    if-eqz v0, :cond_6e

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :cond_1f
    :goto_1f
    if-ge v2, p1, :cond_83

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_1f

    :cond_3a
    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_1f

    :cond_4f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Staged session "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already contains "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_6e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid session "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, " with package name null"

    invoke-static {p1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_83
    :goto_83
    return-void
.end method

.method public checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_b2

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_b2

    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1f
    :goto_1f
    if-ge v3, v2, :cond_b2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v5, v5, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_1f

    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isInTerminalState()Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_1f

    :cond_3e
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v6

    const-string/jumbo v7, "Session was failed by rollback session: "

    const/16 v8, -0x77

    iget-object v9, v5, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v6, :cond_91

    invoke-static {v4}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v6

    if-nez v6, :cond_91

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v4

    const-string/jumbo v6, "PackageSessionVerifier"

    if-nez v4, :cond_66

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Failed to abort apex session "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v9, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4, v10, v6}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v10, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Session "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v9, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is marked failed due to rollback session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v4, v5, v6}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1f

    :cond_91
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v4}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result v4

    if-nez v4, :cond_9e

    goto :goto_1f

    :cond_9e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v8, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_b2
    :goto_b2
    return-void
.end method

.method public final createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;
    .registers 19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_e

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_c
    move-object v4, v1

    goto :goto_16

    :cond_e
    new-instance v1, Landroid/os/UserHandle;

    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_c

    :goto_16
    new-instance v3, Lcom/android/server/pm/VerifyingSession;

    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v9

    iget v10, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_54

    iget v12, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2f
    iget-object v13, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_51

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3a
    move v14, v0

    move-object/from16 v0, p0

    goto :goto_49

    :cond_3e
    const-string/jumbo v0, "PackageInstallerSession"

    const-string/jumbo v1, "mUserActionRequired should not be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3a

    :goto_49
    iget-object v15, v0, Lcom/android/server/pm/PackageSessionVerifier;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v15}, Lcom/android/server/pm/VerifyingSession;-><init>(Landroid/os/UserHandle;Ljava/io/File;Ljava/lang/String;Lcom/android/server/pm/PackageSessionVerifier$1;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;ZLcom/android/server/pm/PackageManagerService;)V

    return-object v3

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public final endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 6

    const-string/jumbo v0, "PackageSessionVerifier"

    :try_start_3
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->startCheckpoint(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_19

    :catch_16
    move-exception p0

    goto/16 :goto_97

    :cond_19
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Marking session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v3, " as ready"

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    move-result p1

    if-eqz p1, :cond_96

    const-string/jumbo p1, "sys.staged_apex.state"

    const-string/jumbo v1, "staged"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Failed to mark apexd session as ready : "

    const/16 v1, -0x16

    :try_start_56
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5d} :catch_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception p0

    goto :goto_62

    :catch_60
    move-exception p0

    goto :goto_78

    :goto_62
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_78
    const-string p1, "ApexManager"

    const-string/jumbo v2, "Unable to contact apexservice"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_96
    return-void

    :goto_97
    const-string p1, "Failed to get hold of StorageManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x6e

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z
    .registers 7

    const-string v0, "ApexManager"

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    goto :goto_55

    :cond_c
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    move-object v1, p0

    check-cast v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_19
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v1

    iget-boolean v4, v1, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_28

    if-eqz v4, :cond_26

    goto :goto_2f

    :cond_26
    move-object v3, v1

    goto :goto_2f

    :catch_28
    move-exception v1

    const-string/jumbo v4, "Unable to contact apexservice"

    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    if-eqz v3, :cond_55

    iget-boolean v1, v3, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v1, :cond_55

    iget-boolean v1, v3, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v1, :cond_55

    iget-boolean v1, v3, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v1, :cond_55

    iget-boolean v1, v3, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v1, :cond_42

    goto :goto_55

    :cond_42
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_55

    :catch_4c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :cond_55
    :goto_55
    return v2
.end method

.method public final onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSessionVerifier;->ensureActiveApexSessionIsAborted(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p0

    if-nez p0, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to abort apex session "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string/jumbo v1, "PackageSessionVerifier"

    invoke-static {p0, v0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1a
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p1, p3, p4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    const/16 p0, -0x16

    invoke-virtual {p2, p0, p4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier;->mStagedSessions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    .registers 7

    new-instance v0, Lcom/android/server/pm/PackageSessionVerifier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageSessionVerifier$1;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iget-object v1, p2, Lcom/android/server/pm/VerifyingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageSessionVerifier;->createVerifyingSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$1;)Lcom/android/server/pm/VerifyingSession;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_37
    new-instance p0, Lcom/android/server/pm/MultiPackageVerifyingSession;

    invoke-direct {p0, p2, v0}, Lcom/android/server/pm/MultiPackageVerifyingSession;-><init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V

    iget-object p1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_48
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    const-wide/32 v2, 0x40000

    const-string/jumbo p1, "queueVerify"

    invoke-static {v2, v3, p1, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p0, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/android/server/pm/VerifyingSession$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .registers 16

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/16 v2, -0x16

    const/4 v3, 0x0

    const-string/jumbo v4, "PackageSessionVerifier"

    const/4 v5, -0x1

    if-eqz v1, :cond_41

    const-class v1, Lcom/android/server/rollback/RollbackManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerInternal;

    :try_start_1d
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    check-cast v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->notifyStagedSession(I)I

    move-result p1
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_81

    :catch_2a
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Failed to notifyStagedSession for session: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    :cond_41
    invoke-static {p1}, Lcom/android/server/pm/PackageSessionVerifier;->isRollback(Lcom/android/server/pm/StagingManager$StagedSession;)Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p1, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-class v6, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_5e
    if-ge v7, v6, :cond_74

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v9

    if-ne v9, p1, :cond_71

    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    goto :goto_81

    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_74
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Could not find rollback id for commit session: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_80
    :goto_80
    move p1, v5

    :goto_81
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    move-result v1

    if-eqz v1, :cond_1b7

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v7, :cond_b8

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    move-result v8

    if-eqz v8, :cond_9c

    iget-object v7, v7, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v7, v7, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v7}, Landroid/util/IntArray;->add(I)V

    goto :goto_9c

    :cond_b8
    new-instance v0, Landroid/apex/ApexSessionParams;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams;-><init>()V

    iget v7, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v7, v0, Landroid/apex/ApexSessionParams;->sessionId:I

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    iget-object v1, v6, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-ne v1, v7, :cond_d4

    iput-boolean v8, v0, Landroid/apex/ApexSessionParams;->isRollback:Z

    iput p1, v0, Landroid/apex/ApexSessionParams;->rollbackId:I

    goto :goto_da

    :cond_d4
    if-eq p1, v5, :cond_da

    iput-boolean v8, v0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    iput p1, v0, Landroid/apex/ApexSessionParams;->rollbackId:I

    :cond_da
    :goto_da
    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    :try_start_e9
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ApexManager;->submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;

    move-result-object v0
    :try_end_f2
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_1b2

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v1, v0

    move v5, v3

    :goto_fe
    if-ge v5, v1, :cond_195

    aget-object v7, v0, v5

    :try_start_102
    iget-object v8, p0, Lcom/android/server/pm/PackageSessionVerifier;->mPackageParserSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda68;->f$0:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    iget-object v10, v8, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9, v10, v8}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/pm/parsing/PackageParser2;
    :try_end_112
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_102 .. :try_end_112} :catch_169

    :try_start_112
    new-instance v9, Ljava/io/File;

    iget-object v10, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x400

    invoke-virtual {v8, v9, v10, v3}, Lcom/android/internal/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v9
    :try_end_11f
    .catchall {:try_start_112 .. :try_end_11f} :catchall_16b

    :try_start_11f
    invoke-virtual {v8}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_122
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_11f .. :try_end_122} :catch_169

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_15f

    const-string/jumbo v8, "com.samsung.android.support.targets"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15f

    const-string/jumbo v8, "ro.product.name"

    const-string v10, ""

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_142
    if-ge v12, v11, :cond_150

    aget-object v13, v10, v12

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14d

    goto :goto_15f

    :cond_14d
    add-int/lit8 v12, v12, 0x1

    goto :goto_142

    :cond_150
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string/jumbo p1, "Supported targets("

    const-string v0, ") are specified but no matched one with "

    invoke-static {p1, v7, v0, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_15f
    :goto_15f
    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_fe

    :catch_169
    move-exception p0

    goto :goto_177

    :catchall_16b
    move-exception p0

    if-eqz v8, :cond_176

    :try_start_16e
    invoke-virtual {v8}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_172

    goto :goto_176

    :catchall_172
    move-exception p1

    :try_start_173
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_176
    :goto_176
    throw p0
    :try_end_177
    .catch Lcom/android/internal/pm/parsing/PackageParserException; {:try_start_173 .. :try_end_177} :catch_169

    :goto_177
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse APEX package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_195
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Session "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has following APEX packages: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b7

    :catchall_1b2
    move-exception p0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p0

    :cond_1b7
    :goto_1b7
    return-void
.end method
