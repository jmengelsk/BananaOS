.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/StorageStatsService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    return-void
.end method
