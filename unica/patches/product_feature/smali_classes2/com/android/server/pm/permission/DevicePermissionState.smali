.class public final Lcom/android/server/pm/permission/DevicePermissionState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final getOrCreateUserState(I)Lcom/android/server/pm/permission/UserPermissionState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/UserPermissionState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/permission/UserPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/UserPermissionState;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/permission/DevicePermissionState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
