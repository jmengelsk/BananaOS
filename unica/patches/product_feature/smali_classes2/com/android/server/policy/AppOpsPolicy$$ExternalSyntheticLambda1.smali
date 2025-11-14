.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    :cond_11
    return-void
.end method
