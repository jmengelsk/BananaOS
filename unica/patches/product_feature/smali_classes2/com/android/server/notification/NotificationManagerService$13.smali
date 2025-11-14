.class public final Lcom/android/server/notification/NotificationManagerService$13;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final onAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v5, p1

    move v4, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final onConfigChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public final onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$13;Landroid/app/NotificationManager$Policy;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final onPolicyChanged(Landroid/app/NotificationManager$Policy;)V
    .locals 2

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$13;Landroid/app/NotificationManager$Policy;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final onZenModeChanged()V
    .locals 2

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
