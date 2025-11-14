.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_6a

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    return-void

    :pswitch_d  #0x9
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    return-void

    :pswitch_13  #0x8
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    return-void

    :pswitch_19  #0x7
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void

    :pswitch_21  #0x6
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    return-void

    :pswitch_2b  #0x5
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void

    :pswitch_33  #0x4
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_42  #0x3
    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->ensurePackageInfo()V

    return-void

    :pswitch_4a  #0x2
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->refreshPackageSignatureAndSave()V

    return-void

    :pswitch_52  #0x1
    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_61  #0x0
    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    sget-object p0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_52  #00000001
        :pswitch_4a  #00000002
        :pswitch_42  #00000003
        :pswitch_33  #00000004
        :pswitch_2b  #00000005
        :pswitch_21  #00000006
        :pswitch_19  #00000007
        :pswitch_13  #00000008
        :pswitch_d  #00000009
    .end packed-switch
.end method
