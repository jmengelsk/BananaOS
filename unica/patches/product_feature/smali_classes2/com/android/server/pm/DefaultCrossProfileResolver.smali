.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-void
.end method


# virtual methods
.method public final createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 12

    iget v7, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {p0, v7}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    move/from16 v3, p7

    invoke-virtual {p1, p2, v3, v7}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_1

    :cond_2
    move/from16 v3, p7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move-object p1, v8

    :goto_1
    if-nez p1, :cond_4

    :goto_2
    return-object v8

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    move v10, v9

    :goto_3
    if-ge v9, v8, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_5

    move-object/from16 v11, p8

    goto :goto_4

    :cond_5
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v11, p8

    invoke-interface {v11, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    move-object v2, p3

    move-wide/from16 v3, p5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {p0, p1, v10, v7}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    return-object p0
.end method

.method public final filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-le v2, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final resolveIntent(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 16

    move-object/from16 v9, p9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p8, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_3

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v0, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-wide/from16 v5, p6

    move-object/from16 v8, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move/from16 v7, p4

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v10}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    return-object v10

    :cond_4
    if-nez v9, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_5
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_b

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v0, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget v1, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-nez v3, :cond_9

    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v1, :cond_8

    if-nez p10, :cond_9

    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p6

    move-object/from16 v8, p11

    move v11, v0

    move v12, v4

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    goto :goto_6

    :goto_5
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_c

    :goto_8
    const/4 v12, 0x0

    goto :goto_9

    :cond_c
    iget-object v1, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    move-object v12, v2

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_f

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_10

    move-object v12, v0

    :cond_10
    if-eqz v12, :cond_12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_11
    if-eqz v12, :cond_12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_b
    return-object v10
.end method
