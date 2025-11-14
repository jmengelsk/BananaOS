.class public Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivities:Ljava/util/HashMap;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iput-object p3, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    return-void
.end method


# virtual methods
.method public final addActivity(Lcom/android/server/pm/Computer;Lcom/android/internal/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_5f

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    if-eqz p4, :cond_37

    const-string/jumbo v4, "activity"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object v5, p4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "==> For Activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_5f
    return-void
.end method

.method public final allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 7

    check-cast p2, Landroid/util/Pair;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_a
    if-ltz p0, :cond_39

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 p0, 0x0

    return p0

    :cond_36
    add-int/lit8 p0, p0, -0x1

    goto :goto_a

    :cond_39
    return v0
.end method

.method public final dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/util/Pair;

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " filter "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-le p4, p0, :cond_3a

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " filters)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    check-cast p1, Landroid/util/Pair;

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public final isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Landroid/util/Pair;

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Landroid/util/Pair;

    return-object p0
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v6, p4

    move-wide/from16 v3, p5

    move-object/from16 v1, p2

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_17d

    :cond_23
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, p1

    invoke-interface {v5, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_17d

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_17d

    invoke-static {v7, v2, v3, v4, v6}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_17d

    :cond_3d
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_4d

    goto/16 :goto_17d

    :cond_4d
    const-wide/32 v3, 0x2000000

    and-long v3, p5, v3

    const-wide/16 v10, 0x0

    cmp-long v3, v3, v10

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_5c

    move v3, v12

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    const-wide/32 v13, 0x1000000

    and-long v13, p5, v13

    cmp-long v13, v13, v10

    if-eqz v13, :cond_68

    move v13, v12

    goto :goto_69

    :cond_68
    move v13, v4

    :goto_69
    if-eqz v13, :cond_7b

    invoke-virtual {v9}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v14

    if-eqz v14, :cond_7b

    if-eqz v3, :cond_79

    invoke-virtual {v9}, Landroid/content/IntentFilter;->isExplicitlyVisibleToInstantApp()Z

    move-result v3

    if-eqz v3, :cond_7b

    :cond_79
    move v3, v12

    goto :goto_7c

    :cond_7b
    move v3, v4

    :goto_7c
    const-wide/32 v14, 0x800000

    and-long v14, p5, v14

    cmp-long v14, v14, v10

    if-eqz v14, :cond_87

    move v14, v12

    goto :goto_88

    :cond_87
    move v14, v4

    :goto_88
    if-eqz v13, :cond_94

    if-nez v3, :cond_94

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-nez v3, :cond_94

    goto/16 :goto_17d

    :cond_94
    if-nez v14, :cond_9e

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_9e

    goto/16 :goto_17d

    :cond_9e
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_ac

    goto/16 :goto_17d

    :cond_ac
    new-instance v3, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v9, v7}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v3, v7}, Landroid/content/pm/ResolveInfo;-><init>(Z)V

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-wide/16 v13, 0x40

    and-long v13, p5, v13

    cmp-long v7, v13, v10

    if-eqz v7, :cond_c4

    iput-object v9, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_c4
    invoke-virtual {v9}, Landroid/content/IntentFilter;->handleAllWebDataURI()Z

    move-result v7

    iput-boolean v7, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    invoke-virtual {v9}, Landroid/content/IntentFilter;->getPriority()I

    move-result v7

    iput v7, v3, Landroid/content/pm/ResolveInfo;->priority:I

    move/from16 v7, p3

    iput v7, v3, Landroid/content/pm/ResolveInfo;->match:I

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v7

    iput-boolean v7, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v7

    iput v7, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    const-string/jumbo v7, "sys.knox.app_name_change"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_14f

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v4

    if-eqz v4, :cond_14f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2, v6}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameForComponent(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "replace res.nonLocalizedLabel("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") to newName("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") and activity.getPackageName() () UId("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "PackageManager"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_14f
    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_15a

    iput-boolean v12, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_160

    :cond_15a
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v3, Landroid/content/pm/ResolveInfo;->icon:I

    :goto_160
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, v3, Landroid/content/pm/ResolveInfo;->system:Z

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    iput-boolean v0, v3, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    return-object v3

    :cond_17d
    :goto_17d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_17
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v7, p4

    move v6, p6

    move v5, v0

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_17

    :goto_21
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 20

    move-object/from16 v0, p6

    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v8, p7

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    if-nez v0, :cond_15

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_15
    const-wide/32 v1, 0x10000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x0

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    move v6, v1

    goto :goto_25

    :cond_24
    move v6, v11

    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v11

    :goto_2f
    if-ge v2, v1, :cond_63

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/util/Pair;

    move v9, v11

    :goto_48
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5d

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v3, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    aput-object v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    :cond_5d
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_63
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final removeActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2b

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2b
    return-void
.end method

.method public final sortResults(Ljava/util/List;)V
    .registers 2

    sget-object p0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method
