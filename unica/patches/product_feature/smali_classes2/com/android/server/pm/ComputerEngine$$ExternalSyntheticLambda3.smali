.class public final synthetic Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ComputerEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ComputerEngine;III)V
    .locals 0

    iput p4, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    iput p2, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    iget v1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    iget p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mGetAppListHelper:Lcom/samsung/android/server/pm/nal/GetAppListHelper;

    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->requestGetAppListPermIfNeeded(Landroid/content/Context;II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/ComputerEngine;

    iget v1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$1:I

    iget p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda3;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mGetAppListHelper:Lcom/samsung/android/server/pm/nal/GetAppListHelper;

    iget-object v0, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/pm/nal/GetAppListHelper;->requestGetAppListPermIfNeeded(Landroid/content/Context;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
