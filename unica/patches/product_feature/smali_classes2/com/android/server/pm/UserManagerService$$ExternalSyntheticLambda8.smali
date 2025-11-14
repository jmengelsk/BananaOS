.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/pm/UserInfo;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(IZ)V

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/UserManagerService;->dispatchUserAdded(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V

    const-class p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz p0, :cond_20

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->onPreCreatedUserConversion(I)V

    :cond_20
    return-void
.end method
