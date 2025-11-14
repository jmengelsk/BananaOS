.class public final Lcom/android/server/wm/AppCompatResizeOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowRestrictedResizability:Lcom/android/server/wm/AppCompatUtils$1;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/utils/OptPropFactory;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_ALLOW_RESIZEABLE_ACTIVITY_OVERRIDES"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    new-instance p1, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppCompatResizeOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatResizeOverrides;Landroid/content/pm/PackageManager;)V

    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowRestrictedResizability:Lcom/android/server/wm/AppCompatUtils$1;

    return-void
.end method
