.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:[Ljava/lang/String;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[I

.field public final synthetic f$7:[I

.field public final synthetic f$8:Landroid/util/SparseArray;

.field public final synthetic f$9:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$6:[I

    iput-object p8, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$7:[I

    iput-object p9, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$8:Landroid/util/SparseArray;

    iput-object p10, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$9:Lcom/android/server/pm/pkg/PackageStateInternal;

    iput-object p11, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$10:[Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$11:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$12:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v9, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iget v10, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$4:I

    iget-object v11, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$6:[I

    iget-object v13, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$7:[I

    move v14, v8

    iget-object v8, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$8:Landroid/util/SparseArray;

    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$9:Lcom/android/server/pm/pkg/PackageStateInternal;

    iget-object v15, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$10:[Ljava/lang/String;

    move-object v4, v2

    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$11:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$12:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_1f4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-object/from16 v17, v1

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_71

    goto/16 :goto_10f

    :cond_71
    move-object/from16 v1, v17

    goto :goto_46

    :cond_74
    move-object/from16 v17, v1

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-object/from16 p0, v1

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v1

    if-nez v1, :cond_a3

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a3
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_a8

    goto :goto_10f

    :cond_a8
    move-object/from16 v1, p0

    goto :goto_7e

    :cond_ab
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedService;

    move-object/from16 p0, v1

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v1

    if-nez v1, :cond_d8

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d8
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_dd

    goto :goto_10f

    :cond_dd
    move-object/from16 v1, p0

    goto :goto_b3

    :cond_e0
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v7

    if-nez v7, :cond_10b

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10b
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_e8

    :cond_10f
    :goto_10f
    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c6

    const-string/jumbo v4, "android"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_150

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string/jumbo v5, "notExported"

    const-string/jumbo v4, "android"

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    const-string/jumbo v9, "android"

    move v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v2, v14

    move-object v10, v1

    move-object v1, v3

    move-object v3, v0

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V

    move-object v13, v3

    move-object v9, v6

    move-object v11, v7

    move-object v12, v8

    move-object v3, v1

    move v1, v4

    move-object v8, v5

    goto :goto_15e

    :cond_150
    move v9, v10

    move-object v10, v1

    move v1, v9

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object v9, v12

    move-object v12, v8

    move-object v8, v11

    move-object v11, v13

    move-object v13, v0

    move-object/from16 v0, v17

    :goto_15e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string/jumbo v5, "notExported"

    move-object v4, v3

    move-object/from16 v2, v16

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v9

    move-object v9, v3

    move v4, v1

    move-object v1, v3

    move-object v5, v8

    move-object v7, v11

    move-object v8, v12

    move-object v3, v13

    move v2, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V

    move-object v9, v6

    move-object v3, v1

    move v1, v4

    move-object v8, v5

    const/4 v2, 0x0

    :goto_17e
    array-length v4, v15

    if-ge v2, v4, :cond_1c1

    aget-object v4, v15, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_193

    move-object/from16 v19, v16

    move/from16 v16, v2

    move-object v2, v13

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, v19

    goto :goto_1b8

    :cond_193
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string/jumbo v5, "notExported"

    move-object/from16 v6, v16

    move/from16 v16, v2

    move-object v2, v6

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    move-object v11, v2

    move-object v9, v4

    move v2, v14

    move v4, v1

    move-object v1, v3

    move-object v3, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V

    move-object v2, v3

    move-object v9, v6

    move-object v12, v7

    move-object v13, v8

    move-object v3, v1

    move v1, v4

    move-object v8, v5

    :goto_1b8
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v16, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v2

    move v2, v4

    goto :goto_17e

    :cond_1c1
    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, v16

    goto :goto_1d2

    :cond_1c6
    move v0, v10

    move-object v10, v1

    move v1, v0

    move-object/from16 v18, v6

    move-object v9, v12

    move-object v12, v13

    move-object/from16 v0, v17

    move-object v13, v8

    move-object v8, v11

    move-object v11, v2

    :goto_1d2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string/jumbo v5, "exported"

    const-string v4, "<implicit>"

    move-object v2, v11

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v9

    const/4 v9, 0x0

    move v4, v1

    move-object v1, v3

    move-object v5, v8

    move-object v3, v10

    move-object v7, v12

    move-object v8, v13

    move v2, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V

    :cond_1f3
    return-void

    :cond_1f4
    move-object v0, v1

    move v1, v10

    move-object v10, v12

    move-object v12, v8

    move-object v8, v11

    move-object v11, v13

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-string/jumbo v5, "whole"

    const-string v4, "<implicit>"

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v9

    const/4 v9, 0x0

    move v4, v1

    move-object v1, v3

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v3, v2

    move v2, v14

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V

    return-void
.end method
