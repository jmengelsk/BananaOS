.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Lcom/android/server/pm/Computer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)V
    .registers 5

    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    iput p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_2c

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0

    :pswitch_10  #0x1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/Computer;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_10  #00000001
    .end packed-switch
.end method
