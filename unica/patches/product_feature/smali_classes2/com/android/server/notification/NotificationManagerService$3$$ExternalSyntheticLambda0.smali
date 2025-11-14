.class public final synthetic Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$3;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$3;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$3;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$1:I

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$5:I

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;->f$7:I

    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    const-string v0, "Bad notification(tag="

    const-string v7, ", id="

    const-string v9, ") posted from package "

    invoke-static {v5, v0, v1, v7, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crashing app(uid="

    const-string v5, ", pid="

    invoke-static {v2, v4, v1, v5, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v5, -0x1

    move-object v1, p0

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method
