.class public final Lcom/android/server/pm/resolution/ComponentResolverSnapshot;
.super Lcom/android/server/pm/resolution/ComponentResolverBase;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/resolution/ComponentResolverBase;-><init>(Lcom/android/server/pm/UserManagerService;)V

    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;B)V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v0, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p2, v0, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    new-instance p2, Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-direct {p2, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    return-void
.end method
