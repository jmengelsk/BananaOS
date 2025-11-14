.class public final Lcom/android/server/wm/ActivityEmbeddedController;
.super Lcom/android/server/wm/PackagesChange;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->EMBED_ACTIVITY_DIRECTORY:Ljava/lang/String;

    const-string v1, "EmbedActivityPackageSetting"

    const/16 v2, 0x400

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method


# virtual methods
.method public final findTargetUserId(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public final getEnabled(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
