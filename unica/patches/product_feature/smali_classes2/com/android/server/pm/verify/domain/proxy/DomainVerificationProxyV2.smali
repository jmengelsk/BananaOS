.class public final Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mContext:Landroid/content/Context;

.field public final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final isCallerVerifier(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p1, p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final runMessage(ILjava/lang/Object;)Z
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    if-eq v2, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/Set;

    new-instance v3, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    invoke-direct {v3, v2}, Landroid/content/pm/verify/domain/DomainVerificationRequest;-><init>(Ljava/util/Set;)V

    iget-object v2, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    iget-object v4, v2, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "verifier_timeout"

    const-wide/16 v6, 0x2710

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v8

    const-string v13, ""

    const/4 v11, 0x0

    const/16 v12, 0x134

    invoke-virtual/range {v8 .. v13}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    move-object v4, v8

    iget-object v2, v2, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v5, Lcom/android/server/DeviceIdleInternal;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/DeviceIdleInternal;

    move-wide v11, v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    iget-object v2, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x134

    const-string/jumbo v16, "domain verification agent"

    invoke-interface/range {v8 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1
.end method

.method public final sendBroadcastForPackages(Ljava/util/Set;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DomainVerificationConnection;->schedule(ILjava/lang/Object;)V

    return-void
.end method
