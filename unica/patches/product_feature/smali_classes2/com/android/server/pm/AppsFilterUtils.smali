.class public abstract Lcom/android/server/pm/AppsFilterUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static canQueryAsInstaller(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_21

    :cond_11
    iget-boolean v0, p1, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-nez v0, :cond_23

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    :goto_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 8

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_4b

    :cond_2b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_4b

    :cond_36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_4b

    :cond_41
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_4b
    return v1

    :cond_4c
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_9d

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    sub-int/2addr p2, v1

    :goto_64
    if-ltz p2, :cond_9d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v3

    if-nez v3, :cond_77

    goto :goto_9a

    :cond_77
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7e

    goto :goto_9a

    :cond_7e
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-direct {v3, v2, v4, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_89
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    return v1

    :cond_9a
    :goto_9a
    add-int/lit8 p2, p2, -0x1

    goto :goto_64

    :cond_9d
    return v0
.end method

.method public static canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    goto :goto_37

    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_37

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0

    :cond_37
    :goto_37
    return v1
.end method

.method public static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArraySet;)Z
    .registers 19

    move-object/from16 v0, p2

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_5a

    move-object/from16 v3, p1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_57

    :cond_19
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v5

    sub-int/2addr v5, v2

    :goto_22
    if-ltz v5, :cond_57

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v12

    if-eqz v0, :cond_48

    iget-object v6, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    :goto_46
    move-object v15, v6

    goto :goto_4a

    :cond_48
    const/4 v6, 0x0

    goto :goto_46

    :goto_4a
    const-string v13, "AppsFilter"

    const/4 v14, 0x1

    invoke-virtual/range {v7 .. v15}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v6

    if-lez v6, :cond_54

    return v2

    :cond_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_5a
    const/4 v0, 0x0

    return v0
.end method
