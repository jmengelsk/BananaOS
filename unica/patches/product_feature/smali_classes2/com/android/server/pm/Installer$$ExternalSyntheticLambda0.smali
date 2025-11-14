.class public final synthetic Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/Installer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Installer;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    const-string v0, "Installer"

    iget v1, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/Installer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Installer;

    packed-switch v1, :pswitch_data_32

    sget v1, Lcom/android/server/pm/Installer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "vold died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mVold:Landroid/os/IVold;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connectVold()V

    return-void

    :pswitch_1b  #0x0
    sget v1, Lcom/android/server/pm/Installer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "installd died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalldLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1b  #00000000
    .end packed-switch
.end method
