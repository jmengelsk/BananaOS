.class public final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstantAppInstallerActivitySupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveInfoSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    return-void
.end method


# virtual methods
.method public final applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)V
    .registers 16

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_21

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_a4

    :cond_21
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_a4

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "PackageManager"

    if-nez v2, :cond_5e

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a4

    :cond_5e
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_67

    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    :cond_95
    if-nez v2, :cond_a1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v1, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a1

    goto :goto_a4

    :cond_a1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a4
    :goto_a4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :cond_a8
    return-void
.end method

.method public final chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .registers 27

    move-object/from16 v0, p0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz p8, :cond_1fb

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v15, 0x0

    if-eqz v2, :cond_6d

    const-string/jumbo v3, "android.intent.category.HOME"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_6d

    if-lez v14, :cond_6d

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    return-object v5

    :cond_4e
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_58

    move v9, v12

    goto :goto_59

    :cond_58
    move v9, v15

    :goto_59
    const/4 v8, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move-object/from16 v6, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v2, v4

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_6f

    return-object v7

    :cond_6d
    move-object/from16 v6, p8

    :cond_6f
    if-ne v14, v12, :cond_78

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_78
    if-le v14, v12, :cond_1fb

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_84

    move v9, v12

    goto :goto_85

    :cond_84
    move v9, v15

    :goto_85
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_c0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " vs "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    const-string/jumbo v7, "PackageManager"

    invoke-static {v4, v5, v7}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_c0
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_d2

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v4, v5, :cond_d2

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_d5

    :cond_d2
    move-object v7, v6

    goto/16 :goto_1f4

    :cond_d5
    const/4 v8, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object v7, v6

    if-eqz v1, :cond_e9

    return-object v1

    :cond_e9
    move v1, v15

    move v8, v1

    :goto_eb
    if-ge v8, v14, :cond_12c

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-boolean v2, v9, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_f9

    add-int/2addr v1, v12

    :cond_f9
    move v10, v1

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_126

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v11, p1

    invoke-interface {v11, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_123

    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    if-lez v1, :cond_129

    return-object v9

    :cond_123
    :goto_123
    move/from16 v6, p9

    goto :goto_129

    :cond_126
    move-object/from16 v11, p1

    goto :goto_123

    :cond_129
    :goto_129
    add-int/2addr v8, v12

    move v1, v10

    goto :goto_eb

    :cond_12c
    move/from16 v6, p9

    const-wide/16 v2, 0x2

    and-long v2, p6, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13a

    goto/16 :goto_1fb

    :cond_13a
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    if-ne v1, v14, :cond_149

    move v1, v12

    goto :goto_14a

    :cond_149
    move v1, v15

    :goto_14a
    iput-boolean v1, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_169

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    :cond_169
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1bd

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_17a

    goto :goto_1bd

    :cond_17a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move v4, v15

    :goto_17f
    if-ge v4, v3, :cond_19a

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_18c

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_18d

    :cond_18c
    move-object v5, v13

    :goto_18d
    if-eqz v5, :cond_1bd

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_198

    goto :goto_1bd

    :cond_198
    add-int/2addr v4, v12

    goto :goto_17f

    :cond_19a
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1b1

    iput-boolean v12, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_1b5

    :cond_1b1
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    :goto_1b5
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    :cond_1bd
    :goto_1bd
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1dc

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v6, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_1dc
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1e9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :cond_1e9
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "android.dock_home"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :goto_1f4
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_1fb
    :goto_1fb
    return-object v13
.end method

.method public final queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
    .registers 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_27

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_27

    move v6, v8

    goto :goto_28

    :cond_27
    move v6, v2

    :goto_28
    if-eqz p9, :cond_2e

    const/16 v1, 0x3e8

    move v3, v1

    goto :goto_30

    :cond_2e
    move/from16 v3, p7

    :goto_30
    const-string/jumbo v2, "query intent receivers"

    const/4 v5, 0x0

    move v7, v6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v4, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    move v7, v3

    move v6, v4

    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move v11, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    move-result v7

    move v2, v6

    move v6, v10

    move v3, v11

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    move-result-wide v4

    move v6, v2

    move/from16 v17, v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_6f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v7, p2

    goto :goto_74

    :cond_6f
    const/4 v3, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object/from16 v2, p2

    :goto_74
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v18

    sget-object v19, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v11, 0x1

    move-object/from16 v15, p3

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v16, p9

    move-object v14, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v0, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    if-eqz v3, :cond_11a

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_116

    const-wide/32 v11, 0x800000

    and-long/2addr v11, v4

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    if-eqz v11, :cond_a4

    move v11, v12

    goto :goto_a5

    :cond_a4
    move v11, v8

    :goto_a5
    const-wide/32 v15, 0x1000000

    and-long/2addr v15, v4

    cmp-long v15, v15, v13

    if-eqz v15, :cond_af

    move v15, v12

    goto :goto_b0

    :cond_af
    move v15, v8

    :goto_b0
    const-wide/32 v20, 0x2000000

    and-long v4, v4, v20

    cmp-long v4, v4, v13

    if-eqz v4, :cond_bb

    move v4, v12

    goto :goto_bc

    :cond_bb
    move v4, v8

    :goto_bc
    if-eqz v9, :cond_c0

    move v5, v12

    goto :goto_c1

    :cond_c0
    move v5, v8

    :goto_c1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_d3

    move v13, v12

    goto :goto_d4

    :cond_d3
    move v13, v8

    :goto_d4
    iget v14, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v16, v14, v16

    if-eqz v16, :cond_df

    move/from16 v16, v12

    goto :goto_e1

    :cond_df
    move/from16 v16, v8

    :goto_e1
    if-eqz v16, :cond_eb

    const/high16 v18, 0x200000

    and-int v14, v14, v18

    if-nez v14, :cond_eb

    move v14, v12

    goto :goto_ec

    :cond_eb
    move v14, v8

    :goto_ec
    if-eqz v16, :cond_f2

    if-eqz v4, :cond_f3

    if-nez v14, :cond_f3

    :cond_f2
    move v8, v12

    :cond_f3
    if-nez v3, :cond_102

    if-nez v11, :cond_fb

    if-nez v5, :cond_fb

    if-nez v13, :cond_116

    :cond_fb
    if-eqz v15, :cond_102

    if-eqz v5, :cond_102

    if-eqz v8, :cond_102

    goto :goto_116

    :cond_102
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v19, v0

    :cond_116
    :goto_116
    move-object v8, v7

    move-object/from16 v0, v19

    goto :goto_14c

    :cond_11a
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_12d

    move-object/from16 v3, p3

    move-object/from16 v0, v18

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_12f

    move-object/from16 v19, v11

    goto :goto_12f

    :cond_12d
    move-object/from16 v0, v18

    :cond_12f
    :goto_12f
    invoke-interface {v1, v8}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_146

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    move-object v8, v7

    move v7, v6

    move-object v6, v3

    move-object/from16 v3, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    move v6, v7

    if-eqz v0, :cond_147

    goto :goto_149

    :cond_146
    move-object v8, v7

    :cond_147
    move-object/from16 v0, v19

    :goto_149
    invoke-static {v10, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :goto_14c
    if-eqz v8, :cond_153

    iput-object v8, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-static {v10, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_153
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 p2, p1

    move-object/from16 p3, v0

    move/from16 p5, v1

    move-object/from16 p9, v2

    move/from16 p7, v3

    move/from16 p8, v6

    move-object/from16 p4, v9

    move/from16 p6, v17

    invoke-interface/range {p2 .. p9}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
    .registers 40

    move-object/from16 v0, p0

    move/from16 v4, p8

    const-string/jumbo v8, "PackageManager"

    const-string v9, "Get preferred activity for NFC of user "

    const-string/jumbo v10, "Resolving for NFC "

    const-wide/32 v12, 0x40000

    :try_start_f
    const-string/jumbo v1, "resolveIntent"

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_ef

    const/4 v11, 0x0

    if-nez v1, :cond_24

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v11

    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v6, v4

    move-wide/from16 v4, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    move-result v7

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move/from16 v2, p8

    move/from16 v6, p9

    move/from16 v3, p10

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    move-result-wide v4

    const-string/jumbo v2, "resolve intent"

    move-wide v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v26, v3

    move v3, v14

    move-wide/from16 v14, v26

    move-object/from16 v1, p1

    move/from16 v4, p8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x403

    const/16 v22, 0x0

    const/16 v23, 0x1

    if-ne v1, v2, :cond_66

    move/from16 v1, v23

    goto :goto_68

    :cond_66
    move/from16 v1, v22

    :goto_68
    const/16 v6, 0x2710

    const-wide/16 v24, 0x0

    if-eqz v1, :cond_f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " flag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v16, 0x20000

    and-long v16, v14, v16

    cmp-long v1, v16, v24

    if-eqz v1, :cond_f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_24 .. :try_end_ad} :catchall_ef

    move-object v1, v2

    move v5, v4

    move-wide v3, v14

    move-object/from16 v2, p3

    :try_start_b2
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b6} :catch_be
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_ef

    move-wide v4, v3

    :try_start_b7
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_bb} :catch_bc
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_ef

    goto :goto_c4

    :catch_bc
    move-exception v0

    goto :goto_c0

    :catch_be
    move-exception v0

    move-wide v4, v3

    :goto_c0
    :try_start_c0
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v11

    :goto_c4
    if-eqz v0, :cond_eb

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cd

    goto :goto_eb

    :cond_cd
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-lt v1, v6, :cond_da

    move/from16 v11, v23

    goto :goto_dc

    :cond_da
    move/from16 v11, v22

    :goto_dc
    const/4 v9, 0x1

    move-object v1, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v10, p8

    move-object v6, v0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v11
    :try_end_eb
    .catchall {:try_start_c0 .. :try_end_eb} :catchall_ef

    :cond_eb
    :goto_eb
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v11

    :catchall_ef
    move-exception v0

    goto/16 :goto_15e

    :cond_f2
    move-wide v4, v14

    :try_start_f3
    const-string/jumbo v1, "queryIntentActivities"

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v7, p11

    move v14, v6

    move/from16 v6, p10

    invoke-interface/range {v1 .. v10}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object v10

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz p9, :cond_12a

    new-instance v15, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/16 v16, 0x0

    const/16 v21, 0x1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v15 .. v21}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v15, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v15, v10}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_12a
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-lt v1, v14, :cond_140

    if-nez p9, :cond_140

    move-object v8, v10

    move/from16 v10, v23

    :goto_135
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v6, p6

    move/from16 v9, p8

    goto :goto_144

    :cond_140
    move-object v8, v10

    move/from16 v10, v22

    goto :goto_135

    :goto_144
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-wide/16 v1, 0x1

    and-long v1, p6, v1

    cmp-long v1, v1, v24

    if-eqz v1, :cond_15a

    if-eqz v0, :cond_15a

    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_154
    .catchall {:try_start_f3 .. :try_end_154} :catchall_ef

    if-eqz v1, :cond_15a

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v11

    :cond_15a
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :goto_15e
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;
    .registers 19

    iget-object p0, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_33

    :cond_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v3, p4

    move v1, p6

    move/from16 v2, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    move-result-wide v3

    move/from16 v7, p8

    move/from16 v8, p9

    move v5, v1

    move v6, v2

    move-object v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_33

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method
