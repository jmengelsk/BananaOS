.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-void
.end method


# virtual methods
.method public final createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 21

    iget v7, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {p0, v7}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_a

    goto :goto_48

    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_48

    :cond_1d
    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_26
    if-ltz v1, :cond_45

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000  # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_40

    move/from16 v3, p7

    invoke-virtual {p1, p2, v3, v7}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_46

    :cond_40
    move/from16 v3, p7

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_45
    move-object p1, v8

    :goto_46
    if-nez p1, :cond_49

    :goto_48
    return-object v8

    :cond_49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v9, v0

    move v10, v9

    :goto_50
    if-ge v9, v8, :cond_83

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_5f

    move-object/from16 v11, p8

    goto :goto_80

    :cond_5f
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v11, p8

    invoke-interface {v11, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v1, :cond_6f

    goto :goto_80

    :cond_6f
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

    :goto_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    :cond_83
    new-instance p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {p0, p1, v10, v7}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    return-object p0
.end method

.method public final filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
    .registers 6

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_24

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x0

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget v2, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-le v2, p1, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-object p0
.end method

.method public final resolveIntent(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .registers 28

    move-object/from16 v9, p9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p8, :cond_b

    goto/16 :goto_f9

    :cond_b
    if-eqz v9, :cond_3b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v13, :cond_3b

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v0, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-wide/from16 v5, p6

    move-object/from16 v8, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_38

    goto :goto_3e

    :cond_36
    move/from16 v7, p4

    :cond_38
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_3b
    move/from16 v7, p4

    const/4 v2, 0x0

    :goto_3e
    if-eqz v2, :cond_47

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v10}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    return-object v10

    :cond_47
    if-nez v9, :cond_4e

    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_c0

    :cond_4e
    new-instance v13, Landroid/util/SparseBooleanArray;

    invoke-direct {v13}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_58
    if-ge v15, v14, :cond_9f

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v0, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    iget v1, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_6c

    move v3, v4

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    :goto_6d
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_73

    move v1, v4

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    if-nez v3, :cond_8f

    invoke-virtual {v13, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_8f

    if-eqz v1, :cond_80

    if-nez p10, :cond_8f

    :cond_80
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p6

    move-object/from16 v8, p11

    move v11, v0

    move v12, v4

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    goto :goto_92

    :cond_8f
    move-object/from16 v0, p0

    goto :goto_9c

    :goto_92
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_99

    goto :goto_a2

    :cond_99
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_9c
    add-int/lit8 v15, v15, 0x1

    goto :goto_58

    :cond_9f
    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_a2
    if-nez v2, :cond_a6

    :goto_a4
    const/4 v12, 0x0

    goto :goto_c0

    :cond_a6
    iget-object v1, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b1

    goto :goto_a4

    :cond_b1
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bf

    goto :goto_a4

    :cond_bf
    move-object v12, v2

    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_ca
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_ef

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_e5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p6

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    goto :goto_e6

    :cond_e5
    const/4 v0, 0x0

    :goto_e6
    if-eqz v0, :cond_e9

    move-object v12, v0

    :cond_e9
    if-eqz v12, :cond_f9

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v10

    :catchall_ef
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f4
    if-eqz v12, :cond_f9

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    :goto_f9
    return-object v10
.end method
