.class public abstract Lcom/android/server/om/OverlayPolicyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mLock:Ljava/lang/Object;

.field public static final policies:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .registers 12

    if-nez p0, :cond_c

    new-instance p0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p3, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {p3}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2f
    if-ge v3, v5, :cond_3f

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    invoke-interface {v6, v1, p1, p2}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_2f

    :cond_3f
    if-eqz v2, :cond_19

    invoke-virtual {p3, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_19

    :cond_45
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v6, v3

    :goto_63
    if-ge v6, v4, :cond_73

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    invoke-interface {v7, v0, p1, p2}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v5, v7

    goto :goto_63

    :cond_73
    if-eqz v5, :cond_4d

    invoke-virtual {p3, v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_4d

    :cond_79
    invoke-virtual {p3}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method
