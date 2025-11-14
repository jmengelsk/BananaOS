.class public final Lcom/android/server/pm/CrossProfileIntentResolverEngine;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static canReachToInternal(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z
    .registers 16

    if-ne p3, p4, :cond_3

    goto :goto_50

    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, p5

    check-cast v6, Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_55

    move v9, v8

    :goto_15
    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_55

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v1, p4, :cond_29

    goto :goto_50

    :cond_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_52

    :cond_34
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_52

    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_52

    :goto_50
    const/4 v0, 0x1

    return v0

    :cond_52
    :goto_52
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_55
    return v8
.end method

.method public static resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v2, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static shouldSkipCurrentProfile(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_22

    move p2, p1

    :goto_8
    move-object p3, p0

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_22

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget p3, p3, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_22
    return p1
.end method


# virtual methods
.method public final chooseCrossProfileResolver(Lcom/android/server/pm/ComputerEngine;IIZJ)Lcom/android/server/pm/CrossProfileResolver;
    .registers 14

    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result p2

    iget-object p1, p1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez p2, :cond_19

    invoke-virtual {p0, p3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_19

    :cond_11
    new-instance p2, Lcom/android/server/pm/DefaultCrossProfileResolver;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/pm/DefaultCrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V

    return-object p2

    :cond_19
    :goto_19
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    if-nez p2, :cond_25

    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    :cond_25
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    const-wide/32 v1, 0x20000000

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_42

    const-wide v5, 0x400000000L

    and-long/2addr p5, v5

    cmp-long p3, p5, v3

    if-eqz p3, :cond_40

    goto :goto_42

    :cond_40
    move p3, v2

    goto :goto_43

    :cond_42
    :goto_42
    move p3, v1

    :goto_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p5

    :try_start_47
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {p0}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    move-result p0
    :try_end_58
    .catchall {:try_start_47 .. :try_end_58} :catchall_5b

    if-eqz p0, :cond_5d

    goto :goto_5e

    :catchall_5b
    move-exception p0

    goto :goto_78

    :cond_5d
    move v1, v2

    :goto_5e
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_76

    if-nez p4, :cond_70

    if-eqz p3, :cond_76

    const-string/jumbo p0, "android.permission.QUERY_CLONED_APPS"

    invoke-virtual {p2, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_76

    :cond_70
    new-instance p0, Lcom/android/server/pm/NoFilteringResolver;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    return-object p0

    :cond_76
    const/4 p0, 0x0

    return-object p0

    :goto_78
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;
    .registers 19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1f

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move/from16 v4, p7

    goto :goto_4e

    :cond_1f
    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object v3, p0

    move-object v4, p1

    move-wide v8, p3

    move/from16 v5, p6

    move/from16 v7, p8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/ComputerEngine;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move/from16 v4, p7

    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/CrossProfileResolver;->filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4e

    :cond_43
    move/from16 v4, p7

    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_51
    invoke-static {v0}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isNoFilteringPropertyConfiguredForUser(I)Z
    .registers 4

    const-string/jumbo v0, "isProfile"

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->isProfileUnchecked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_21

    return p1

    :cond_21
    return v1
.end method

.method public final resolveIntentInternal(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;
    .registers 31

    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v0, p12

    if-eqz v0, :cond_f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v1, v7, v8, v4}, Lcom/android/server/pm/ComputerEngine;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_26
    move-object v2, v1

    move v14, v4

    move/from16 v4, p4

    goto/16 :goto_15d

    :cond_2c
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v6, v5, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    iget v9, v5, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-nez v6, :cond_50

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_50
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_5c
    if-nez v0, :cond_6a

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6a
    move-object v12, v0

    const/4 v9, 0x0

    :goto_6c
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_17e

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    move-object v2, v1

    move v15, v9

    move-object/from16 v16, v14

    const/16 v17, 0x0

    move v14, v4

    goto/16 :goto_151

    :cond_89
    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move-wide/from16 v5, p6

    move/from16 v4, p10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/ComputerEngine;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v10

    move v5, v3

    if-eqz v10, :cond_14d

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v11, p11

    move-object v2, v7

    move-object v3, v8

    move v15, v9

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v0, v10

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/CrossProfileResolver;->resolveIntent(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_be
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_144

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v2, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_136

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_116

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v2, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_117

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v0, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz v0, :cond_117

    const/4 v0, 0x1

    move v9, v0

    move/from16 v17, v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v16, v14

    move-object/from16 v0, p0

    :goto_111
    move-object/from16 v1, p1

    move/from16 v14, p5

    goto :goto_12d

    :cond_116
    const/4 v1, 0x0

    :cond_117
    move v9, v1

    move/from16 v17, v9

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v16, v14

    goto :goto_111

    :goto_12d
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    move-object v2, v1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_151

    :cond_136
    move-object/from16 v2, p1

    move-object/from16 v16, v14

    const/16 v17, 0x0

    move/from16 v14, p5

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v16

    goto/16 :goto_be

    :cond_144
    move-object/from16 v2, p1

    :goto_146
    move-object/from16 v16, v14

    const/16 v17, 0x0

    move/from16 v14, p5

    goto :goto_151

    :cond_14d
    move-object/from16 v2, p1

    move v15, v9

    goto :goto_146

    :goto_151
    add-int/lit8 v9, v15, 0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v1, v2

    move v4, v14

    move-object/from16 v14, v16

    goto/16 :goto_6c

    :goto_15d
    if-ne v4, v14, :cond_17e

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-virtual {v2, v14}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_17e

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v1, p2

    move-wide/from16 v3, p6

    move-object v0, v2

    move v5, v14

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_17e

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17e
    return-object v13
.end method
