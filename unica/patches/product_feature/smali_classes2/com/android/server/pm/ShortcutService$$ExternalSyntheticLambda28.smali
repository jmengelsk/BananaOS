.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_32

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x1
    check-cast p0, Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_23  #0x0
    check-cast p0, Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_14  #00000001
    .end packed-switch
.end method
