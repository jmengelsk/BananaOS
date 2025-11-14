.class public abstract Lcom/android/server/permission/access/SchemePolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract getObjectScheme()Ljava/lang/String;
.end method

.method public abstract getSubjectScheme()Ljava/lang/String;
.end method

.method public migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 2

    return-void
.end method

.method public migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 3

    return-void
.end method

.method public onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    return-void
.end method

.method public onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 3

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 4

    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public abstract onStateMutated()V
.end method

.method public onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .registers 4

    return-void
.end method

.method public onSystemReady()V
    .registers 1

    return-void
.end method

.method public onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 3

    return-void
.end method

.method public parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 3

    return-void
.end method

.method public abstract parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
.end method

.method public serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 3

    return-void
.end method

.method public abstract serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
.end method

.method public upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 5

    return-void
.end method
