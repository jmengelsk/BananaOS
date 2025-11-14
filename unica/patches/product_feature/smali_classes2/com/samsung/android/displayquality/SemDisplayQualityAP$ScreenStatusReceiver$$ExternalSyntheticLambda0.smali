.class public final synthetic Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

    iput-object p2, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;

    iget-object v1, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;->$r8$lambda$UFzDN-gLG2m1X2vCxGgpiDGKL3E(Lcom/samsung/android/displayquality/SemDisplayQualityAP$ScreenStatusReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
