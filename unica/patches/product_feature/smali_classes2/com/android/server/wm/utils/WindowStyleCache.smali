.class public final Lcom/android/server/wm/utils/WindowStyleCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mEntryFactory:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    return-void
.end method
