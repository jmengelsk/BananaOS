.class public final Lcom/android/server/wm/TaskPersister$RecentTaskFiles;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLoadedFiles:Ljava/util/ArrayList;

.field public final mUserTaskFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mUserTaskFiles:[Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mLoadedFiles:Ljava/util/ArrayList;

    return-void
.end method
