.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    iput-object v2, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageArchiver;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
