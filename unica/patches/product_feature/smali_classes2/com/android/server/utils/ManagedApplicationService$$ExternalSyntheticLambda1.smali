.class public final synthetic Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .registers 5

    iput p1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p4, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_5c

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void

    :pswitch_1b  #0x2
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void

    :pswitch_31  #0x1
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void

    :pswitch_47  #0x0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService;

    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    new-instance p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v3, v0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    iget-object v0, v0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    invoke-virtual {v0, p0}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_47  #00000000
        :pswitch_31  #00000001
        :pswitch_1b  #00000002
    .end packed-switch
.end method
