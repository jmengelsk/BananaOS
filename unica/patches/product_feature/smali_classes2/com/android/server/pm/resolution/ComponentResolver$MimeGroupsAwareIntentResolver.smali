.class public abstract Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mIsUpdatingMimeGroup:Z

.field public final mMimeGroupToFilter:Landroid/util/ArrayMap;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    iget-object p2, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    iget-boolean p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return-void
.end method


# virtual methods
.method public final addFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V
    .registers 8

    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_46

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    if-nez v3, :cond_21

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2f

    :cond_21
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    :goto_2f
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_3f
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3f .. :try_end_42} :catch_33

    goto :goto_33

    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_46
    invoke-super {p0, p2}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez p1, :cond_56

    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    :cond_56
    return-void
.end method

.method public final isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .registers 4

    check-cast p2, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_38

    :cond_d
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_43

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_43

    :cond_22
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isScannedAsStoppedSystemApp()Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_43

    :goto_38
    const/4 p0, 0x1

    return p0

    :cond_3a
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    return p0

    :cond_43
    :goto_43
    const/4 p0, 0x0

    return p0
.end method

.method public final removeFilterInternal(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_13

    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    :cond_13
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    return-void
.end method

.method public final updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/util/Pair;

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    array-length v1, p3

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    move v3, v0

    move v4, v3

    :goto_13
    if-ge v3, v1, :cond_56

    aget-object v5, p3, v3

    if-eqz v5, :cond_56

    invoke-virtual {p0, p2, v5}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V

    invoke-virtual {v6}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v5

    if-nez v7, :cond_39

    if-nez v5, :cond_37

    move v5, v2

    goto :goto_51

    :cond_37
    :goto_37
    move v5, v0

    goto :goto_51

    :cond_39
    if-nez v5, :cond_3c

    goto :goto_37

    :cond_3c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq v6, v8, :cond_47

    goto :goto_37

    :cond_47
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v7, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_51
    xor-int/2addr v5, v2

    or-int/2addr v4, v5

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_56
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return v4
.end method
