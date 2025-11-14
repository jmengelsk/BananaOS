.class public final synthetic Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/RemovePackageHelper;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/server/pm/PreferredActivityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/RemovePackageHelper;Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PreferredActivityHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PreferredActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    iget-object p0, v0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    :cond_0
    return-void
.end method
