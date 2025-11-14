.class public final synthetic Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->disconnectActivityFromServices(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    return-void
.end method
