.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "service_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string/jumbo p1, "wearable_sensing"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    :cond_1c
    return-void
.end method
