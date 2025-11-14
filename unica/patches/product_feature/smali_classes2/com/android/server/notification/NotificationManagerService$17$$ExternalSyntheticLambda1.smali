.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:Landroid/os/UserHandle;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$2:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$3:I

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda1;->f$5:I

    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "listener:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
