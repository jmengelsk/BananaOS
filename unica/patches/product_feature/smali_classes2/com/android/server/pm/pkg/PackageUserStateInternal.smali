.class public interface abstract Lcom/android/server/pm/pkg/PackageUserStateInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateDefault;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    return-void
.end method


# virtual methods
.method public abstract getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
.end method

.method public abstract getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
.end method
