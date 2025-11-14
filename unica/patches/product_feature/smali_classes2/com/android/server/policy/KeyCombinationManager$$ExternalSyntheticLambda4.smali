.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V
    .registers 5

    iput p4, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iput-boolean p3, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_24

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14  #00000000
    .end packed-switch
.end method
