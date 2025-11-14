.class public final Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    return-void
.end method
