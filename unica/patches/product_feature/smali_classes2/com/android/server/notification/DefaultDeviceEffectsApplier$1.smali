.class public final Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    invoke-static {p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->-$$Nest$munregisterScreenOffReceiver(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;->this$0:Lcom/android/server/notification/DefaultDeviceEffectsApplier;

    invoke-static {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->-$$Nest$fgetmPendingNightMode(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->-$$Nest$mupdateNightModeImmediately(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    return-void
.end method
