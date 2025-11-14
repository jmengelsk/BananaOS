.class public final Lcom/android/server/wm/AppCompatOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

.field public final mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

.field public final mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

.field public final mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

.field public final mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public final mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/AppCompatCameraOverrides;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/wm/AppCompatCameraOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/wm/AppCompatOrientationOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    new-instance v6, Lcom/android/server/wm/AppCompatReachabilityOverrides;

    invoke-direct {v6, p1, p3, p5}, Lcom/android/server/wm/AppCompatReachabilityOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v6, p0, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    new-instance v1, Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides;

    invoke-direct {p1, v2, v3, v4}, Lcom/android/server/wm/AppCompatFocusOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mFocusOverrides:Lcom/android/server/wm/AppCompatFocusOverrides;

    new-instance p1, Lcom/android/server/wm/AppCompatResizeOverrides;

    invoke-direct {p1, v2, p2, v4}, Lcom/android/server/wm/AppCompatResizeOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/utils/OptPropFactory;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    new-instance p1, Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-direct {p1, v2, v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    return-void
.end method
