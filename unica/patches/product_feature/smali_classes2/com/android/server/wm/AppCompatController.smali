.class public final Lcom/android/server/wm/AppCompatController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

.field public final mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

.field public final mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

.field public final mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

.field public final mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

.field public final mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

.field public final mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

.field public final mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-direct {v5, v3, v0, v1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    new-instance v6, Lcom/android/server/wm/AppCompatDeviceStateQuery;

    invoke-direct {v6, p2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v6, p0, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    new-instance v0, Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/TransparentPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    new-instance v1, Lcom/android/server/wm/AppCompatOverrides;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    new-instance p2, Lcom/android/server/wm/AppCompatOrientationPolicy;

    invoke-direct {p2, v2, v1}, Lcom/android/server/wm/AppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    new-instance p2, Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-direct {p2, v2, v0, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    new-instance p2, Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    new-instance p2, Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    new-instance p2, Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    new-instance p2, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v1, v0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    new-instance p1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    invoke-direct {p1, v2, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    new-instance p1, Lcom/android/server/wm/AppCompatSandboxingPolicy;

    invoke-direct {p1, v2}, Lcom/android/server/wm/AppCompatSandboxingPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

    new-instance p1, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    invoke-direct {p1, v2}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    return-void
.end method
