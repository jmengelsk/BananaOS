.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStarter;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityStarter;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityStarter;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v1, 0x1

    new-array v13, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    aput-object v2, v13, v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v14

    iget-object p0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez p0, :cond_23

    const/4 p0, 0x0

    :goto_21
    move-object v8, p0

    goto :goto_28

    :cond_23
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_21

    :goto_28
    const/4 v6, 0x0

    const/high16 v7, 0x50000000

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object p0

    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method
