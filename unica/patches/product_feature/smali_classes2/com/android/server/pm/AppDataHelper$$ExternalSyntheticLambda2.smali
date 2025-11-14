.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$LocalService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$3:Landroid/os/storage/StorageManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$LocalService;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerService$LocalService;

    iput p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/PackageSetting;

    iput-object p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Landroid/os/storage/StorageManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerService$LocalService;

    iget v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/PackageSetting;

    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    :cond_19
    return-void
.end method
