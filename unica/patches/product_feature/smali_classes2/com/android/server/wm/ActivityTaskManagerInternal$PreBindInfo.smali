.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final compatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field public final configuration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->compatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;->configuration:Landroid/content/res/Configuration;

    return-void
.end method
