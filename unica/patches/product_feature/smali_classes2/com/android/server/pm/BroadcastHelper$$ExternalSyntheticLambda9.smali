.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Supplier;

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$1:Z

    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$3:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$4:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iget-boolean v12, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$1:Z

    iget v13, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$3:Ljava/util/function/Supplier;

    iget-object v14, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$4:[Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "UN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SUSPENDED broadcasts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    filled-new-array {v13}, [I

    move-result-object v7

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/Computer;

    array-length v2, v14

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v5, v14, v3

    const/4 v4, 0x0

    if-eqz v12, :cond_2

    const/16 v6, 0x3e8

    invoke-static {v13, v6, v15, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_3

    new-instance v4, Landroid/os/Bundle;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v8, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v2

    const/4 v2, 0x0

    move v8, v3

    move-object v3, v4

    const/high16 v4, 0x1000000

    move v11, v6

    const/4 v6, 0x0

    move/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    add-int/lit8 v3, v16, 0x1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move/from16 v2, v17

    goto :goto_1

    :cond_4
    return-void
.end method
