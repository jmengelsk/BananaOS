.class public final Lcom/android/server/pm/SpegService$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SpegService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SpegService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/SpegService$1;->this$0:Lcom/android/server/pm/SpegService;

    iput-object p3, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/SpegService$1;->this$0:Lcom/android/server/pm/SpegService;

    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "SetupWizardFinished: "

    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
