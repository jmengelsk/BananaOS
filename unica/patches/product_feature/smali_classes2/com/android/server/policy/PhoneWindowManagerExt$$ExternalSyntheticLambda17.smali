.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$0:I

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$1:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$0:I

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$1:I

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;->f$2:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_0
    new-instance v13, Landroid/app/Instrumentation;

    invoke-direct {v13}, Landroid/app/Instrumentation;-><init>()V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    invoke-virtual {v13, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-wide v3, v1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, p0}, Landroid/view/KeyEvent;->semSetDisplayId(I)V

    invoke-virtual {v13, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
