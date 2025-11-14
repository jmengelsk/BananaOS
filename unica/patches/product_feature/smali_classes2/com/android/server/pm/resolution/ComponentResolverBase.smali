.class public abstract Lcom/android/server/pm/resolution/ComponentResolverBase;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/resolution/ComponentResolverApi;


# instance fields
.field public mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

.field public mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

.field public mProvidersByAuthority:Landroid/util/ArrayMap;

.field public mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

.field public mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public componentExists(Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public dumpActivityResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz p0, :cond_0

    const-string p0, "\nActivity Resolver Table:"

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const-string p0, "Activity Resolver Table:"

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    :cond_1
    return-void
.end method

.method public dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v0, v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    if-eqz p4, :cond_0

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    iget-boolean v2, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    iput-boolean v5, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    const-string/jumbo v2, "Registered ContentProviders:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    :cond_2
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v5, v6}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    if-eqz p4, :cond_5

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    if-nez v1, :cond_7

    iget-boolean v1, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    iput-boolean v5, p3, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    const-string v1, "ContentProvider Authorities:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v5

    :cond_7
    const-string v3, "  ["

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "]:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "      applicationInfo="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public dumpProviderResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz p0, :cond_0

    const-string p0, "\nProvider Resolver Table:"

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "Provider Resolver Table:"

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    :cond_1
    return-void
.end method

.method public dumpReceiverResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz p0, :cond_0

    const-string p0, "\nReceiver Resolver Table:"

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "Receiver Resolver Table:"

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    :cond_1
    return-void
.end method

.method public dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2

    iget-boolean v0, p2, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const-string/jumbo p2, "Service permissions:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    move-result-object p0

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpServiceResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz p0, :cond_0

    const-string p0, "\nService Resolver Table:"

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "Service Resolver Table:"

    goto :goto_0

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    const/4 v6, 0x1

    const-string v3, "  "

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p0, p1, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    :cond_1
    return-void
.end method

.method public getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    return-object p0
.end method

.method public getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    return-object p0
.end method

.method public getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    return-object p0
.end method

.method public getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/pkg/component/ParsedService;

    return-object p0
.end method

.method public queryActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryActivities(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProvider(Lcom/android/server/pm/ComputerEngine;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .locals 8

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v7, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    move v6, p5

    move-object v2, v0

    move-object v5, v4

    move-wide v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    move-wide v2, v3

    move-object v4, v5

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    move-object v5, p0

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    move v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    move v5, p6

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 12

    move-object/from16 v0, p6

    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v7, p7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const/4 v10, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    move v5, p0

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v10

    :goto_1
    if-ge v2, p0, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/util/Pair;

    move v9, v10

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v3, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryProviders(Lcom/android/server/pm/ComputerEngine;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v9, p7

    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v3, v9}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v11, v3

    move-object v12, v4

    :goto_0
    if-ltz v11, :cond_d

    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v3, v3, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Ljava/lang/Object;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v13, p1

    :cond_1
    :goto_1
    move/from16 v14, p4

    goto/16 :goto_5

    :cond_2
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v13, p1

    invoke-virtual {v13, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    if-nez v8, :cond_3

    :goto_2
    goto :goto_1

    :cond_3
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    move/from16 v14, p4

    invoke-static {v5, v14}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_5

    :cond_5
    move/from16 v14, p4

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    new-instance v4, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v4}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    :cond_8
    move-object v15, v4

    invoke-interface {v8, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    iget-object v4, v15, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    move-wide/from16 v4, p5

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v4, v15, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v9

    :goto_3
    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    move-object v5, v8

    move-object v8, v4

    move-object v4, v10

    move-object v10, v5

    move/from16 v9, p7

    move-object v7, v6

    move-wide/from16 v5, p5

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_b

    :goto_4
    move-object v4, v15

    goto :goto_5

    :cond_b
    if-nez v12, :cond_c

    new-instance v12, Ljava/util/ArrayList;

    add-int/lit8 v4, v11, 0x1

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_c
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    add-int/lit8 v11, v11, -0x1

    move/from16 v9, p7

    goto/16 :goto_0

    :cond_d
    return-object v12
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, v0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {p0, p6}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    move v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    move v5, p6

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServices(Lcom/android/server/pm/ComputerEngine;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .locals 12

    move-object/from16 v0, p6

    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object p0, v1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    move/from16 v7, p7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    const-wide/32 v2, 0x10000

    and-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const/4 v10, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    move v5, p0

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v10

    :goto_1
    if-ge v2, p0, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedService;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/util/Pair;

    move v9, v10

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v3, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/IntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public querySyncProviders(Lcom/android/server/pm/ComputerEngine;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_8

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;-><init>()V

    :cond_4
    move/from16 v9, p5

    invoke-interface {v10, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    iget-object v2, v1, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_5

    move-object v8, v7

    goto :goto_1

    :cond_5
    move-object v8, v7

    const-wide/16 v6, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v5, v1, Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;->mCache:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v5, 0x0

    move/from16 v9, p5

    move-object v7, v8

    move-object v8, v2

    invoke-static/range {v3 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method
