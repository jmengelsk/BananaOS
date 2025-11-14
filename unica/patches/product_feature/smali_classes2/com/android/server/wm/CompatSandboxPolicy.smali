.class public final Lcom/android/server/wm/CompatSandboxPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public mBounds:Landroid/graphics/Rect;

.field public mFlags:I

.field public mScale:F


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_ALLOW_SANDBOXING_VIEW_BOUNDS_APIS"

    invoke-virtual {v0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public final resolveCompatSandboxValues(Landroid/content/res/Configuration;Landroid/content/pm/ConstrainDisplayApisConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    and-int/lit16 v2, v2, 0x102

    if-eqz v2, :cond_4

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mAllowSandboxingViewBoundsApisProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object v1, p2, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_2
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    and-int/lit8 p2, p2, -0xd

    iput p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    :cond_6
    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    if-nez p2, :cond_7

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result p1

    if-eqz p1, :cond_7

    iput v2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    invoke-static {}, Lcom/samsung/android/core/CompatSandbox;->getEmptyRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget p2, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    iget v0, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    iget-object v1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mFlags:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mScale:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/CompatSandboxPolicy;->mBounds:Landroid/graphics/Rect;

    return-void
.end method
