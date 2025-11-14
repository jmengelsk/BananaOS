.class public final Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;
.super Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/core/CompatChangeablePackageInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setHasLauncherActivity(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    iget-object v1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setUid(I)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    iget-object v1, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setHasGameCategory(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v1, "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsResizeableActivityOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    const-string/jumbo v1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsOrientationOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    const-string/jumbo v1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    const-string/jumbo v2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsMinAspectRatioOverrideDisallowed(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->setIsActivityEmbeddingSplitsEnabled(Z)Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;

    invoke-super {p0}, Lcom/samsung/android/core/CompatChangeablePackageInfo$Builder;->build()Lcom/samsung/android/core/CompatChangeablePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final varargs equalsProperty(Ljava/lang/Boolean;[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/samsung/android/server/util/CompatChangeableAppsService$BuilderWrapper;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/samsung/android/core/CompatChangeableApps;->readComponentProperty(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
