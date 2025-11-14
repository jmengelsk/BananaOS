.class public final Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;
.super Ljava/util/TimerTask;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;->this$1:Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/EngmodeService;->mNeedChangeFlag:Z

    const-string/jumbo p0, "engmode_service_time"

    const-string/jumbo v0, "clear engmode service"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
