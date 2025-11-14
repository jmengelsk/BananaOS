.class public final Lcom/android/server/pinner/PinnerService$PinnedApp;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public active:Z

.field public final mFiles:Ljava/util/ArrayList;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p2, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    iget-object p1, p1, Lcom/android/server/pinner/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    return-void
.end method
