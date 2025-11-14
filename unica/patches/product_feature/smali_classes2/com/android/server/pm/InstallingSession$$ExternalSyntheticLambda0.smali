.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/server/pm/InstallingSession;->$r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/server/pm/InstallingSession;->$r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
