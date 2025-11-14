.class public final Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    return-void
.end method


# virtual methods
.method public final onAppAdded(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method

.method public final onAppRemoved(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    return-void
.end method
